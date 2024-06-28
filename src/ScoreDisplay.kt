object ScoreDisplay { // Controla o mostrador de pontuação.
    val SCsel = 0x80
    val SCLK = 0x10
    val updateDisplay = 0x06
    val displayOn = 0x07
    // Inicia a classe, estabelecendo os valores iniciais.
    fun init(){
        SerialEmitter.send(SerialEmitter.Destination.SCORE, displayOn, 7)
        SerialEmitter.send(SerialEmitter.Destination.SCORE, updateDisplay, 7)
        }
    // Envia comando para atualizar o valor do mostrador de pontuação
    fun setScore(value: Int) {
        if (value <= 999999 && value != 0) {
            var v = value
            var cmd = 0

            while (v != 0 && cmd < 6) {
                var data = v % 10
                data = (data.shl(3)).or(cmd)
                SerialEmitter.send(SerialEmitter.Destination.SCORE, data, 7)
                SerialEmitter.send(SerialEmitter.Destination.SCORE, updateDisplay, 7)

                cmd++
                v /= 10
            }
        }
    }

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


fun main(){
    HAL.init()
    SerialEmitter.init()
    ScoreDisplay.init()

    ScoreDisplay.setScore(999999)
    Thread.sleep(1000)
    ScoreDisplay.setScore(1200001)
    Thread.sleep(1000)
    ScoreDisplay.setScore(100001)
}