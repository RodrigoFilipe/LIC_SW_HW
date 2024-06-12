import isel.leic.utils.Time

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
    var sentences = arrayOf("Space Invaders")
    val mynave = nave().nave
    //val myinvader = nave.invader().invader
    //    LCD.cursor(0,0)
    //LCD.write(" SPACE INVADERS")
    //LCD.cursor(1,0)
    //LCD.write("GAME ${mynave}  ${myinvader} ${myinvader}")
    //LCD.cursor(1, 14)
    //LCD.write("$${credits.getCredits()}")
    //println(credits.getCoins())
    LCD.placard(true,true, sentences[0],"GAME  " + nave().nave  + "   " +  nave.invader().invader.toString() + " " +
            nave.invader().invader.toString() + " $" + credits.getCredits().toString())
}

fun main(args: Array<String>) {
   // println(0%1)
    initMain()
    var mycoin = coinBox()
   // mycoin.readFile()
    //println(mycoin.getCoins())
    mainMenu(mycoin)
    var flagSwitchOff: Boolean = true
    //var stateMaintenance: Boolean = false
    //var coinAccept = CoinAcceptor
    var dataStore = scoreGamers()
    dataStore.readFile()

    println(dataStore.scoreList.size)
    var newCoin = CoinAcceptor //será para eliminar

    while (flagSwitchOff) {

        getSleep(4)
        if (newCoin.checkCoin()){
            mycoin.insertCoin(1)
            updateCredits(mycoin.getCredits())
            mainMenu(mycoin)
        }

        manutencao.enterManut()
        if (manutencao.getMaintenence()) {
            println("em maintenance")
            flagSwitchOff = !maintenance(mycoin, dataStore)

        }
        // val key = KBD.waitKey(1)
        //if (key != KBD.NONE.toChar()) {
        if ( getKey() == '#' && mycoin.existCredits()) {
            mycoin.setCredits()
            match(dataStore)
            mainMenu(mycoin)
        }

    }
    dataStore.writeFile()
    println("Log Off")
}

fun updateCredits(credits: Int) {
    var sentences = arrayOf("Space Invaders")
    //LCD.cursor(1, 15)
    LCD.placard(true,true, sentences[0],"GAME  " + nave().nave  + "   " +  nave.invader().invader.toString() + " " +
            nave.invader().invader.toString() + " $" + credits.toString()) // alterado para ser visível sempre o mesmo letering
   // LCD.write(credits.toString())

}

