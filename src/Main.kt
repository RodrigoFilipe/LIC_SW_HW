fun main2() {
    initMain()
    var credits = coinBox()
    mainMenu(credits)



}


fun initMain(){
    HAL.init()
    SerialEmitter.init()
    KBD.init()
    LCD.init()
    ScoreDisplay.init()
    CoinAcceptor.init()

}

fun mainMenu(credits: coinBox){
    LCD.cursor(0,0)
    LCD.write(" SPACE INVADERS")
    LCD.cursor(1,0)
    LCD.write("GAME }  A A")
    LCD.cursor(1, 14)
    LCD.write("$${credits.getCredits()}")
    println(credits.getCoins())
}


fun main(args: Array<String>) {
    println(0%1)
    initMain()
    var mycoin = coinBox()
    println(mycoin.getCoins())
    mainMenu(mycoin)
    var flagSwitchOff: Boolean = true
    //var stateMaintenance: Boolean = false

    //var coinAccept = CoinAcceptor
    var dataStore = scoreGamers()
    var newCoin = CoinAcceptor

    while (flagSwitchOff) {

        //getSleep()
        //println("--------- inserir moeda ${Time.getTimeInMillis()}, coins ${newCoin.checkCoin()} ${CoinAcceptor.checkCoin()}, ${mycoin.getCredits()}")
        if (newCoin.checkCoin()){
            mycoin.insertCoin(1)
            updateCredits(mycoin.existCredits())
        }

        manutencao.enterManut()
        if (manutencao.getMaintenence()) {
            println("em maintenance")
            flagSwitchOff = !maintenance(mycoin, dataStore)
        }
        // val key = KBD.waitKey(1)
        //if (key != KBD.NONE.toChar()) {
        if ( getKey() == '#' && mycoin.existCredits()) {
            println("coins and credits: {mycoin.getCredits()}")
            println("game")
            dataStore = game(dataStore)
            mycoin.setCredits()
        }

    }
}

fun updateCredits(credits: Int) {
    LCD.cursor(1, 15)
    LCD.write(credits.toString())

}

