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
}


fun main(){
    HAL.init()
    LCD.init()
    KBD.init()
    TUI.keyToLCD()
}