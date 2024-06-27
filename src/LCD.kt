import HAL
import java.lang.invoke.MethodHandles.loop

object LCD { // Escreve no LCD usando a interface a 4 bits.
    // Dimensão do display.
    private const val LINES = 2
    private const val COLS = 16
    private val maskDlow = 0x0F
    private val maskRS = 0x40
    private val maskE = 0x20
    private val maskClk = 0x10
    private val LCDsize = 9
    data class Pos(var line: Int = 0 , var col: Int = 0)
    var cursor = Pos()

    // Escreve um byte de comando/dados no LCD em paralelo
    private fun writeByteParallel(rs: Boolean, data: Int) {
        if (rs) {
            HAL.setBits(maskRS)
        } else {
            HAL.clrBits(maskRS)
        }
        Thread.sleep(1)
        HAL.clrBits(maskClk)
        Thread.sleep(1)
        //write high
        var byte = data shr 4
        HAL.writeBits(0x0F, byte)

        HAL.setBits(maskClk)
        Thread.sleep(1)
        HAL.clrBits(maskClk)
        Thread.sleep(1)

        //write low
        byte = data.and(maskDlow)
        HAL.writeBits(0x0F, byte)

        HAL.setBits(maskClk)
        Thread.sleep(1)
        HAL.clrBits(maskClk)

        Thread.sleep(1)
        HAL.setBits(maskE)
        Thread.sleep(1)
        HAL.clrBits(maskE)
        Thread.sleep(1)

    }

    // Escreve um byte de comando/dados no LCD em série
    private fun writeByteSerial(rs: Boolean, data: Int) {
        var d: Int = 0
        val shiftedData = data.shl(1)
        d = if(rs){
            shiftedData.or(0x001)
        }else{
            shiftedData
        }
        SerialEmitter.send(SerialEmitter.Destination.LCD, d, LCDsize)
    }

    // Escreve um byte de comando/dados no LCD
    private fun writeByte(rs: Boolean, data: Int) {
        writeByteSerial(rs, data)
    }

    // Escreve um comando no LCD
    private fun writeCMD(data: Int) {
        writeByte(false, data)
    }

    // Escreve um dado no LCD
    private fun writeDATA(data: Int) {
        writeByte(true, data)
    }
    fun displayOff(){
        writeCMD(0x08)
    }

    // Envia a sequência de iniciação para comunicação a 4 bits.
    fun init() {
        Thread.sleep(16)
        writeCMD(0x30)
        Thread.sleep(5)
        writeCMD(0x30)
        Thread.sleep(2)

        writeCMD(0x30)
        Thread.sleep(1)
        writeCMD(0x38)
        writeCMD(0x08)
        writeCMD(0x01)
        writeCMD(0x06)
        writeCMD(0x0F)

    }

    // Escreve um caráter na posição corrente.
    fun write(c: Char) {
        writeDATA(c.code)
        cursor.col++
    }

    // Escreve uma string na posição corrente.
    fun write(text: String) {
        for(i in text)
            write(i)
    }


    fun textLine(line: Int, text: String) {
        LCD.clear(line, 0)
        LCD.cursor(line, 0)
        if (text.length < 17){
            LCD.write( text)
        }
        /*
        else{
            val textwhite = "$text                "
            var begin = 0
            var end = 15
            var textDisplay = textwhite.subSequence(begin,end)
            while (true) {
                println("$textDisplay, $begin")
                LCD.write(textDisplay.toString())
                getSleep(1)
                begin++
                end++
                if (begin ==  15 ){
                    end = 15
                    break
                }
                textDisplay = textwhite.subSequence(begin,end)
            }
        }*/
    }

    fun placardMaintenance(text: Array<String>) {

        textLine(0, text.get(0))
        for (i in 1..text.size - 1) {
            textLine(1, text.get(i))
            getSleep(8)
        }
    }

    fun placard(line0: Boolean, line1: Boolean, text0: String, text1: String) {
        if (line0) {
            textLine(0, text0)
        }
        if (line1){
            textLine(1,text1)
        }
    }


    // Envia comando para posicionar cursor (‘line’:0..LINES-1 , ‘column’:0..COLS-1)
    fun cursor(line: Int, column: Int) {
        if (line == -1){
            cursor.line = when (cursor.line){
                1 -> 0
                else -> 1
            }
            val l = cursor.line * 64
            val pos = (l + cursor.col).or(0x80)
            return writeCMD(pos)
        }
        val l = line * 64
        val pos = (l + column).or(0x80) //cmd DDRAM
        cursor.col = column

        writeCMD(pos)
    }

    // Envia comando para limpar o ecrã e posicionar o cursor em (0,0)
    fun clear() {
        writeCMD(0x01)
        cursor = Pos()
    }

    fun clear(line: Int, column: Int) {
        LCD.cursor(line, column)
        LCD.write("                ")  }
}



fun main() {
    HAL.init()
    SerialEmitter.init()
    LCD.init()


    // while (true);


    LCD.write("Hello")
    LCD.clear()

    //LCD.cursor(1, 3)
    //LCD.write("LIC")
    //LCD.clear()



    testKBD_LCD()






}

fun testKBD_LCD(){

    var c = 0
    while (true){

        val key = KBD.waitKey(3000)
        if (key != 0.toChar()){
            LCD.write(key)
            println(key)
            c++
        }
        if (c == 15){
            LCD.clear()
            c = 0
        }


    }

}
