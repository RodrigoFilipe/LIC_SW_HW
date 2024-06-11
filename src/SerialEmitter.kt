object SerialEmitter { // Envia tramas para os diferentes módulos Serial Receiver.
    enum class Destination {LCD, SCORE}
    private val LCD_sel = 0x20 //outputPort(5)
    private val SC_sel = 0x40 //outputPort(6)
    private val SDX = 0x01 //outputPort(0)

    private val SCLK = 0x10 //outputPort(4)
    // Inicia a classe
    fun init(){
        HAL.setBits(SC_sel)
        HAL.setBits(LCD_sel)
        HAL.clrBits(SCLK)
    }
// Envia uma trama para o SerialReceiver identificado o destino em addr,os bits de dados em
    //‘data’ e em size o número de bits a enviar.
    fun send(addr: Destination, data: Int, size : Int){
        var parity = 0
        var sendData = data

        if(addr == Destination.LCD){
            HAL.clrBits(LCD_sel)
            var countBit = 0
            for (i in 0..<size){
                val bit = SDX.and(sendData) //remove after testing
                HAL.writeBits(SDX, sendData)

                if (sendData.and(SDX) == 1){
                    parity++
                }
                sendData = sendData.shr(1)

                HAL.setBits(SCLK)
                HAL.clrBits(SCLK)
                countBit++

            }
            val p = parity % 2
            HAL.writeBits(SDX, p)
            HAL.setBits(SCLK)
            HAL.clrBits(SCLK)
            HAL.setBits(LCD_sel)

        }
        else{
            HAL.clrBits(SC_sel)
            var countBit = 0
            for (i in 0..<size){
                val bit = SDX.and(sendData) //remove after testing
                HAL.writeBits(SDX, sendData)

                if (sendData.and(SDX) == 1){
                    parity++
                }
                sendData = sendData.shr(1)

                HAL.setBits(SCLK)
                HAL.clrBits(SCLK)
                countBit++

            }
            val p = parity % 2
            HAL.writeBits(SDX, p)
            HAL.setBits(SCLK)
            HAL.clrBits(SCLK)
            HAL.setBits(SC_sel)
        }





    }
}

fun main(){
    HAL.init()
    SerialEmitter.init()
    SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b1100100, 7)
    //Thread.sleep(5000)
    SerialEmitter.send(SerialEmitter.Destination.LCD, 0b00000000, 9)

}