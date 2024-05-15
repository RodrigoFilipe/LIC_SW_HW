import isel.leic.utils.Time
import java.time.LocalDateTime
import java.time.LocalTime

object KBD { // Ler teclas. Métodos retornam ‘0’..’9’,’#’,’*’ ou NONE.
    const val NONE = 0;
    private const val keyboardMask = 0x0F
    private const val kvalMask = 0x10
    private const val kackMask = 0x80


    // Inicia a classe
    fun init() {
        HAL.clrBits(kackMask)
    }

    // Retorna de imediato a tecla premida ou NONE se não há tecla premida.
    fun getKey(): Char {

        if(HAL.isBit(kvalMask)){
            val key = HAL.readBits(keyboardMask)

            val c = when(key){
                0x00 -> '1'
                0x01 -> '4'
                0x02 -> '7'
                0x03 -> '*'
                0x04 -> '2'
                0x05 -> '5'
                0x06 -> '8'
                0x07 -> '0'
                0x08 -> '3'
                0x09 -> '6'
                0x0A -> '9'
                0x0B -> '#'
                else -> NONE.toChar()
            }
            if (c != NONE.toChar()){

                if(HAL.isBit(kvalMask)){
                    HAL.setBits(kackMask)
                    while(HAL.isBit(kvalMask));
                    HAL.clrBits(kackMask)
                }
                return c
            }
        }


            return NONE.toChar()

    }
    // Retorna a tecla premida, caso ocorra antes do ‘timeout’ (representado em milissegundos), ou
//NONE caso contrário.
    fun waitKey(timeout: Long): Char{
        val prevTime = Time.getTimeInMillis()

        while (true){

            val key = getKey()

            if(key != NONE.toChar()){
                return key
            }

            val currTime = Time.getTimeInMillis()
            if((currTime - prevTime) > timeout){
                return NONE.toChar()
            }
        }

    }
}

fun main(){
    HAL.init()
    KBD.init()
    /*
    while (true){
        Thread.sleep(1000)
        println(KBD.getKey())
    }

     */
    testKBDHardware()
}


fun testKBDHardware(){

    while (true){
        val key = KBD.waitKey(3000)
        println(key)
    }
}