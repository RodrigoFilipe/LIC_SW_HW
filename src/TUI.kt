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

    fun clearScore(){
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000000, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000001, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000010, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000011, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000100, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000101, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b0000110, 7)
    }
}




fun main(){
    HAL.init()
    SerialEmitter.init()
    LCD.init()
    KBD.init()
    ScoreDisplay.init()
    ScoreDisplay.setScore(10101)
   // SerialEmitter.send(SerialEmitter.Destination.SCORE, 0b1110001, 7)
    TUI.clearScore()
    //TUI.writeFromLeft("43")
    //TUI.writeFromRight("alo")
}