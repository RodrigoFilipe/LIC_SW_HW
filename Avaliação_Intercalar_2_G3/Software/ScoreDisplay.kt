object ScoreDisplay { // Controla o mostrador de pontuação.
    val SCsel = 0x80
    val SCLK = 0x10
    val SCORE = SerialEmitter.Destination.SCORE
    // Inicia a classe, estabelecendo os valores iniciais.
    fun init(){
        /*while (true){
            off(false)
            Thread.sleep(500)
            off(true)
            Thread.sleep(500)
        }*/

    }
    // Envia comando para atualizar o valor do mostrador de pontuação
    fun setScore(value: Int){
        var v = value
        var cmd = 0
        while (v != 0 && cmd < 6){
            var num = v % 10
            num = (cmd.shl(4)).or(num)
            SerialEmitter.send(SCORE, num, 7)
            cmd++
            v /= 10
        }
        while (cmd < 6){
            val num = (cmd.shl(4).or(0xF))
            SerialEmitter.send(SCORE, num, 7)
            cmd++
        }
        SerialEmitter.send(SCORE, 0x60, 7)

    }
    // Envia comando para desativar/ativar a visualização do mostrador de pontuação
    fun off(value: Boolean){
        if (value){
            SerialEmitter.send(SCORE, 0x71, 7)
        }
        else{
            SerialEmitter.send(SCORE, 0x70, 7)
        }
    }
}

fun main(){
    HAL.init()
    SerialEmitter.init()
    ScoreDisplay.init()
    ScoreDisplay.setScore(123)
}