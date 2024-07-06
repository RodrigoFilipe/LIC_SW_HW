import kotlin.system.exitProcess

val modelNave =  Byte [
    0x08,   //    #
    0x04,   //      #
    0x16,   //  #   # #
    0x1f,   //  # # # # #
    0x1f,   //  # # # # #
    0x06,   //  #   # #
    0x04,   //      #
    0x08]   //   #
val navechar = designChar(modelNave)




fun initMain(){

    HAL.init()
    SerialEmitter.init()
    KBD.init()
    LCD.init()
    ScoreDisplay.init()
    CoinAcceptor.init()
    TUI.clearScore()
}

fun mainMenu(credits: Statistics.coinBox){ //proposta de alteração PL
    var sentences = arrayOf(" SPACE INVADERS", "GAME }  0-9")
    LCD.placard(true, true, sentences[0], sentences[1])
    LCD.cursor(1, 13)
    LCD.write("$${credits.getCredits()}")
    println(credits.getCoins())
}
fun updateCredits(credits: Int) {
    LCD.cursor(1, 15)
    LCD.write(credits.toString())
}

fun main(args: Array<String>) {
    println(0%1)
    initMain()
    var mycoin = Statistics.coinBox()
    mycoin.popData()
    println(mycoin.getCoins())
    mainMenu(mycoin)
    var flagSwitchOff: Boolean = true
    var dataStore = scoreGamers()
    dataStore.popData()
    var newCoin = CoinAcceptor

    while (flagSwitchOff) {

//        getSleep(1000)
        //println("--------- inserir moeda ${Time.getTimeInMillis()}, coins ${newCoin.checkCoin()} ${CoinAcceptor.checkCoin()}, ${mycoin.getCredits()}")
        if (newCoin.checkCoin()){
            mycoin.insertCoin(1)
            mainMenu(mycoin)
        }
        manutencao.enterManut()
        if (manutencao.getMaintenence()) {
            //println("em maintenance")
            flagSwitchOff = !maintenance(mycoin, dataStore)
            mainMenu(mycoin) //proposta de alteração PL
        }
        // val key = KBD.waitKey(1)
        //if (key != KBD.NONE.toChar()) {
        if ( getKey() == '#' && mycoin.existCredits()) {
            //println("coins and credits: ${mycoin.getCredits()}")
            //println("game")
            match(dataStore)
            TUI.clearScore()
            mycoin.setCredits()
            mainMenu(mycoin) //
        }

    }
    LCD.displayOff()
    ScoreDisplay.off(true)
    exitProcess(0)
}



