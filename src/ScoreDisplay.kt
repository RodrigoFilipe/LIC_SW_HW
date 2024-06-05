object ScoreDisplay { // Controla o mostrador de pontuação.
    val SCsel = 0x80
    val SCLK = 0x10
    val SCORE = SerialEmitter.Destination.SCORE
    // Inicia a classe, estabelecendo os valores iniciais.
    fun init(){
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x07, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x06, 7)
        }


    // Envia comando para atualizar o valor do mostrador de pontuação
    fun setScore(value: Int){
        var v = value
        var cmd = 0
        while (v != 0 && cmd < 6){
            var num = v % 10
            num = (cmd.shl(4)).or(num)
            SerialEmitter.send(SerialEmitter.Destination.SCORE, num, 7)
            cmd++
            v /= 10
        }
        while (cmd < 6){
            val num = (cmd.shl(4).or(0xF))
            SerialEmitter.send(SerialEmitter.Destination.SCORE, num, 7)
            cmd++
        }
        SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x60, 7)

    }
    // Envia comando para desativar/ativar a visualização do mostrador de pontuação
    fun off(value: Boolean){
        if (value){
            SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x71, 7)
        }
        else{
            SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x70, 7)
        }
    }
}

fun main(){
    HAL.init()
    SerialEmitter.init()
    ScoreDisplay.init()
    //ScoreDisplay.setScore(3)
    SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x08, 7)
    Thread.sleep(1000)
    SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x06, 7)
    Thread.sleep(1000)
    SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x40, 7)
    Thread.sleep(1000)
    SerialEmitter.send(SerialEmitter.Destination.SCORE, 0x06, 7)
}