/*
# -> limpa
* -> muda de linha
 */

object TUI{

    fun keyToLCD(){
        while (true){
            val key = KBD.waitKey(1)
            if (key != KBD.NONE.toChar()){
                when (key){
                    '*' -> LCD.cursor(-1, -1)
                    '#' -> LCD.clear()
                    else -> LCD.write(key)
                }
            }

        }
    }

    fun writeFromLeft(s: String){
        LCD.cursor(0,0)
        LCD.write(s)
    }

    fun writeFromRight(s: String){
        var writePos = 0x8F
        LCD.cursor(0, writePos)
        for (c in s){
            LCD.write(c)
            writePos--
            LCD.cursor(0, writePos)
        }
    }
}




fun main(){
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    KBD.init()
    TUI.writeFromLeft("43")
    TUI.writeFromRight("alo")
}