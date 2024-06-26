import kotlin.random.Random
import isel.leic.utils.Time
import java.util.LinkedList
import java.io.File
import java.io.FileReader
import java.io.BufferedReader
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*


const val NONE = KBD.NONE.toChar()

operator fun Byte.Companion.get(vararg ints: Int) = ByteArray(ints.size) { pos -> ints[pos].toByte() }

fun designChar(design: ByteArray): Char{
    return design.toString().toCharArray()[0]
    //lcd.home();
    //lcd.write(0);
}

class nave {
    val modelNave =  Byte [
        0x08,   //    #
        0x04,   //      #
        0x16,   //  #   # #
        0x1f,   //  # # # # #
        0x1f,   //  # # # # #
        0x06,   //  #   # #
        0x04,   //      #
        0x08]   //   #
    //val nave = designChar(modelNave)

    val nave = "}"
    private var line = 0
    private var shot = -1
    fun getLine(): Int {
        return line
    }
    fun getShot(): Int {
        return shot
    }
    fun viewNave () {
        LCD.cursor(line, 0)
        if (shot != -1){
            LCD.write(shot.toString() + nave)
        }
        else{
            LCD.write(" $nave")
        }

    }


    fun setLine () {
        LCD.cursor(line, 0)
        LCD.write("  ")
        when(line){
            0 -> line = 1
            else -> line = 0
        }
        viewNave()

    }

    fun setShot (s: Int) {
        shot = s
        LCD.cursor(line, 0)
        viewNave()

    }
    class invader {
        val modelInvader =  Byte [
            0x00,   //
            0x04,   //      #
            0x0D,   //    # #   #
            0x1F,   //  # # # # #
            0x0D,   //    # #   #
            0x04,   //      #
            0x00,   //
            0x00]   // 00
        val invader = designChar(modelInvader)
        private var line = Random.nextInt(0, 2)
        private var shot = Random.nextInt(0, 10)
        //Random.nextInt(1, 11)
        private var position = 15 // começa mais À esquerda
        private var velocity = 1 // para aumentar de acordo com o nivel do jogo, pode ser 1 segundo ou menos
        private var shift =  1 // inicialmemte move-se uma posição para a direita, que pode ser incrementada de acordo com o nível
        private var target = 5 // valor atribuido de score inicial, que pode ser incrementado de acordo com o nível
        // pode ainda de acordo com o nível a linha variar ao longo do percurso

        fun getLine(): Int {
            return line
        }
        fun getShot(): Int {
            return shot
        }
        fun getPosition(): Int {
            return position
        }
        fun getVelocity(): Int {
            return velocity
        }
        fun getShift(): Int {
            return shift
        }
        fun getTarget(): Int {
            return target
        }
        fun setPosition () {
            position = position - getShift()
        }
        fun setVelocity () {
            velocity++
        }
        fun setShift () {
            shift++
        }
        fun seTarget () {
            target += 5
        }
        fun setLevel (){
            seTarget()
            setVelocity()
            setShift()
        }
    }
}

class invaderSquadron() {
    val sentences = arrayOf("Game Over", "Nave killed", "Time end", "See ScoreDisplay")
    var invaderList = LinkedList<nave.invader>()

    fun insertInvaderSquadron() {
        val initialTime = Time.getTimeInMillis()
        setInvaderSquadron()
        println( "time set invader " + (Time.getTimeInMillis() - initialTime))
        if (invaderList.size < 18) {
            var invader = nave.invader()
            invaderList.addLast(invader)
        }
        println( "time aval < 18 " + (Time.getTimeInMillis() - initialTime))
        showinvaderSquadron()
        println( "time show invader " + (Time.getTimeInMillis() - initialTime))
        //println("--------------------------------end")
    }
    /* fun killInvaderSquadron(invaderkilled: nave.invader) {
         //println("killed: ${invaderkilled.getTarget()}")
         //println(invaderkilled.getTarget())
         //LCD.cursor(invaderkilled.getLine(), invaderkilled.getPosition())
         //LCD.write("--")
         invaderList.remove(invaderkilled)
     } */
    fun showinvaderSquadron() {
        LCD.clear(0,2)
        LCD.clear(1,2)
        for (i in invaderList.indices) {
            //println("invader number, ${invaderList[i].getLine()}, ${invaderList[i].getPosition()}, ${invaderList[i].getShot()}")
            LCD.cursor(invaderList[i].getLine(), invaderList[i].getPosition())
            //LCD.clear(invaderList[i].getLine(), invaderList[i].getPosition()+2) //Apaga o rasto
            LCD.write(invaderList[i].getShot().toString())
            //invaderList[i].getShot().toString()
        }
        // getSleep(5)
    }

    fun setInvaderSquadron() {
        for (i in invaderList.indices) {
            /*if (invaderList[i].getPosition() == 1) {
                //println("----------------setInvader ")
                //killInvaderSquadron(invaderList[i])
                invaderList.remove(invaderList[i])
                invaderList[i].setPosition()
                break
            }
            else{*/
            invaderList[i].setPosition()
            //}
        }
    }


    fun getfirstInvaderSquadron(): nave.invader {
        return invaderList.first()
    }

    fun getLastInvaderSquadron(): nave.invader {
        return invaderList.last()
    }

    fun killnave(line: Int): Boolean {
        for (i in invaderList.indices) {
            //if (invaderList[i].getLine() == line) {
            if (invaderList[i].getPosition() <= 2) {
                //println("killed nave ${i} - ${line} - invader ${invaderList[i].getLine()}, ${invaderList[i].getShot()}")
                LCD.placard(true,true, sentences[1].toString(), sentences[3].toString())
                getSleep(20)
                return true
                /* LCD.clear()
                 LCD.cursor(0, 0)
                 LCD.write( "Nave killed, $${credits}")
                 LCD.cursor(1, 0)
                 LCD.write( "See ScoreDisplay")
                 return true
                 */
            }
            //  }
        }
        return false
    }
    fun ShootInvaderSquadron(line: Int, shot: Int): Int{
        //ao ocorrer tiro , encontra o primeiro invader da linha da nave, se o valor coincindir, elimina a nave e termina o jogo
        for (i in invaderList.indices) {

            if (invaderList[i].getLine() == line) {
                if (invaderList[i].getShot() == shot) {
                    val target = invaderList[i].getTarget()
                    //println("nave - ${line} , ${shot}, invader ${i} -  ${this.invaderList[i].getLine()}, ${invaderList[i].getShot()}, ${invaderList[i].getPosition()}")
                    LCD.cursor(invaderList[i].getLine(), invaderList[i].getPosition())
                    LCD.write(" ")
                    //println("line, tiro---------------------${i}, ${line}, ${shot}, ${invaderList[i].getShot()}")
                    invaderList.remove(invaderList[i])
                    //killInvaderSquadron(invaderList[i])
                    //println("-----------invader abatido")
                    return target
                }
                else{
                    return 0
                }
            }
        }
        //insertInvaderSquadron()
        return 0
        //return 0
    }
}

class coinBox (){
    private var coins = 0
    private var credits = coins
    private var games = coins
    val fileName = "contability.txt"
    fun insertCoin(coin: Int){
        this.coins += coin
        this.credits += coin*2
    }
    fun insertCoin(coin: Int, games: Int){
        this.coins = coin
        this.games = games
    }
    fun getCoins(): Int{
        return coins
    }
    fun setCoins() {
        coins = 0
        credits = coins
        games = coins
    }
    fun getCredits(): Int{
        return credits
    }
    fun existCredits(): Boolean{
        if (credits > 0){
            return true
        }
        return false
    }
    fun setCredits() {
        this.credits--
        this.games++
    }
    fun viewCoinBox() {
        // println("Exist $coins : coins, $credits : credits")
        LCD.placard(true, true, "coins= ${coins.toString()}", "games = ${games.toString()}")
        getSleep(20)
    }
    fun zeroCoin() {
        coins = 0
        games = 0
    }
    /* fun readFile() {
         val br = BufferedReader(FileReader(fileName))
         val line = br.readLine()
         val str = line!!.split(",")
         insertCoin(str[0].toString().toInt(), str[1].toString().toInt())
     }
     fun writeFile (){
         var dataContability = mutableListOf<Any>()
         //var data = mutableListOf<Any>(coins, games)
         dataContability.add(mutableListOf<Any>(coins, games))
         FileAccess().writeFile(fileName, dataContability)
     }*/
    fun popData() {
        val str =  FileAccess().readFileC(fileName)
        //val br = BufferedReader(FileReader(fileName))
        //val line = br.readLine()
        //val str = line!!.split(",")
        insertCoin(str[0].toString().toInt(), str[1].toString().toInt())
    }
    fun pushData (){
        FileAccess().writeFileC(fileName, "${coins},${games}")
        //var data = ("${coins},${games}")
        //myFile.writeText(data.toString())

        // println("Written to the file")
    }
}

/*fun gameOver (){
}

class fileSystem(){

}*/
//eliminar funções anteriores

class scoreRegister(nome: String, value: Int) {
    var nome = nome
    var scoreValue = value
}
class scoreGamers() {

    var scoreList = mutableListOf <scoreRegister>()
    val fileName = "cumulativeScore.txt"
    fun insertScore(name: String, scoreValue: Int) {
        if (scoreList.size == 20) {
            scoreList.removeLast()
        }

        scoreList.add(scoreRegister(name, scoreValue))
        //scoreList.
        scoreList.sortByDescending {it.scoreValue}
    }

    fun createListScore(): MutableList<scoreRegister> {
        return scoreList
    }

    fun compareScore(value: Int): Boolean {
        if (scoreList.last().scoreValue < value || scoreList.size < 19) {
            return true
        }
        return false
    }

    fun popData(){
        scoreList = FileAccess().readFileLP(fileName)
    }

    /*fun readFile (){
        val br = BufferedReader(FileReader(fileName))
        var line = br.readLine()
        while (line != null){
            val str = line!!.split(",")
            insertScore(str[0].toString(), str[1].toString().toInt())
            line = br.readLine()
        }
    }
    fun writeFile (){
        val myFile = File(fileName)
        for (i in scoreList.indices) {
            val content = scoreList[i].nome + "," + scoreList[i].scoreValue + "\n"
            //print("content, $i")
            if (i == 0){
                myFile.writeText(content)
            }
            else{
                //myFile.appendText("${scoreList.removeFirst().nome}, ${scoreList.removeFirst().scoreValue}\n")
                myFile.appendText(content)
            }
        }
        //println("Written to the file")
    }*/
    fun pushData(){
        FileAccess().writeFileLP(fileName, scoreList)
    }

    fun showFile (){
        val sleep = (scoreList.size) // tempo de cada score X 4 porque o valor de sleep por defeito é 2000
        //println("SLEEP SHOWFILE ${scoreList.size}")
        for (i in scoreList.indices) {
            LCD.textLine(1,
                String.format("%2s", (i+1).toString()) +
                        "-" + String.format("%-8s", scoreList[i].nome) +
                        "-"  + String.format("%4s", scoreList[i].scoreValue.toString()))
            getSleep(sleep) //alterar depois para sleep ou rotativo
            //println("New record $i")
        }
    }
}
fun game (): Int { // com  list
    LCD.clear()
    val sentences = arrayOf("Game Over", "Time end", "See ScoreDisplay", "Score Records")
    var mynave = nave()
    //var counter_Inv = 0
    mynave.viewNave()
    val myinvaderList = invaderSquadron()
    myinvaderList.insertInvaderSquadron()
    var liveInvader= true
    var currTime = Time.getTimeInMillis()
    var score = 0
    var levelIncrement = 50 //avaliar -> altera velocity,  adiciona 1 por novo nível, Target incremento de 5 pontos por novo nível e shift adiciona 1 por nível)
    var gameTime = 60 * 100000 / myinvaderList.getfirstInvaderSquadron().getVelocity() //funciona como nível
    ScoreDisplay.setScore(0)
    var initialTime = Time.getTimeInMillis()
    while (liveInvader && (Time.getTimeInMillis() - currTime) < gameTime) {
        // counter_Inv++
        val key = getKey()
        if (key == '*') {
            mynave.setLine()
            //println("nave--------------------------------${key}")
        }
        if (key in '0'..'9' && mynave.getShot() == -1) {
            mynave.setShot(key.digitToInt())
            // while ((liveInvader && (Time.getTimeInMillis() - currTime) < gameTime)) {
            //score += myinvaderList.ShootInvaderSquadron(mynave.getLine(), mynave.getShot())
            //println("shot------------------------------${key}, ${score}")
            //mynave.setShot(Random.nextInt(0, 9)) // avaliar número escolhido
            //mynave.setLine() // avaliar tecla *
        }
        if (key == '#' && mynave.getShot() != -1 ){
            score += myinvaderList.ShootInvaderSquadron(mynave.getLine(), mynave.getShot())
            //println("shot------------------------------${key}, ${score}")
            mynave.setShot(-1)
            if (score%levelIncrement == 0 && score > 0){
                nave.invader().setLevel()
            }
        }

        ScoreDisplay.setScore(score)

        if (myinvaderList.killnave(mynave.getLine())) {
            liveInvader = false
            //currTime = Time.getTimeInMillis() - currTime
        } else {
            //if(counter_Inv == 300) {
            if ((Time.getTimeInMillis() - currTime) > 600L ){
                println( "time to insert invader: " + (Time.getTimeInMillis() - initialTime))
                initialTime = Time.getTimeInMillis()
                myinvaderList.insertInvaderSquadron()
                getSleep(10)

                //counter_Inv = 0
                println( "time after insert invader: " + (Time.getTimeInMillis() - initialTime))
            }
        }
    }
    if (liveInvader){
        LCD.placard(true,true, sentences[1].toString() , sentences[2].toString())
        getSleep(20);
    }

    // LCD.clear()
    println(score)
    //TUI.clearScore()
    return score
}
/*fun instructions (text: Array<String>) {
    LCD.clear(1,0)
    var i = 0
    while (i < 2) {
        LCD.textLine(1, text[i])
        getSleep(10)
        i++
    }
}*/
fun insertName(): String?  {
    LCD.clear()
    val sentences = arrayOf("name: 3-8 CHAR", "Write your name", "* - for erase", "# - write Name", "Keys: <1 OK-2 3>") //alteração pl
    LCD.placardMaintenance(sentences, sentences.size)
    //println("insert name")
    var name = ""
    var option = NONE
    var letter = 0x41

    while ((option != '#' || name.length < 3) && name.length <= 8){
        option = NONE
        LCD.textLine(0,"name: ${name}${letter.toChar()}")
        while (option == NONE ){
            option = KBD.waitKey(500)
        }
        if (option == '1' ) {
            letter--
            if (letter < 0x41)
                letter = 0x5A
        }
        if (option == '3') {
            letter++
            if (letter > 0x5A || letter < 0x22)
                letter = 0x41
        }
        if (option == '2' && letter != 0x20) {
            name += letter.toChar().toString()
            letter = 0x20
        }
        if (option == '*')
            name = name.dropLast(1)

    }
    return name
}

fun match(dataStore: scoreGamers){
    val sentences = arrayOf("Game Over", "Time end", "See ScoreDisplay", "Score Records")
    LCD.clear()
    var myscore = game()
    ScoreDisplay.setScore(myscore)
    if (dataStore.compareScore(myscore)) {

        // dataStore.insertScore("teste${myscore}", myscore)
        dataStore.insertScore(insertName().toString(), myscore)
    }
    LCD.textLine(0, sentences[3].toString())
    getSleep(20)
    dataStore.showFile()

}
class data () {
    fun createtable(){
        // var mytable = fileSystem().readFile()
    }
}
fun maintenance(mycoin: coinBox, dataStore: scoreGamers): Boolean {
    val sentences = arrayOf("maintenance:", "0 - Shut down" , "1 - Game test", "# - Consult Box", "#&*-Box empty", "9 - next Game ", "Shut down", "", " 3s" )
    //tentar executar em paralelo a visualização do placard, enquanto corre a avaliação da escolha, e será interrompido quando necessário
    LCD.placardMaintenance(sentences, 6)
    var option: Char = 'I'
    while (option != '9') {
        getSleep(20)

        /* println(
              "maintenance options\n" +
                      "0 - Game Off\n" +
                      "1 - Game test\n" +
                      "# - Consult box coin\n" +
                      "# and * - Put Box coin empty\n" +
                      "9 - end\n"
          )*/
        option = NONE
        // while (option == NONE ){
        option = KBD.waitKey(1000)
        println(option)
        //}
        if (option == '0') {
            LCD.placard(true,false,sentences[6] , sentences[7])
            //mycoin.writeFile()
            dataStore.pushData()
            mycoin.pushData() // alteração PL
            return true
        }
        if (option == '1') {
            game()
            TUI.clearScore()
            //LCD.placardMaintenance(sentences) // avaliar para eliminar
        }
        if (option == '#') {
            LCD.clear()
            LCD.write(sentences[4] + sentences[8])
            if (KBD.waitKey(3000) == '*'){
                mycoin.zeroCoin()
                mycoin.viewCoinBox()
                //println("limpar contadores")
            }
            //println(" * - put coin empty")
            mycoin.viewCoinBox()
        }

        /* println("press * to reset counters ")
         option = KBD.waitKey(100)
         if (option == '*') {
             mycoin.zeroCoin()
             mycoin.viewCoinBox()
             println("limpar contadores")
         }*/
        LCD.placardMaintenance(sentences, 6)
    }

    return false
}

fun getKey(): Char{
    val key = KBD.waitKey(1)
    if (key != KBD.NONE.toChar()) {
        return key
    }
    return KBD.NONE.toChar()
}

fun getSleep (t: Int) {
    val time = 10_000L/t
    return Thread.sleep(time)
}
/*
fun main(args: Array<String>) {

    var flagSwitchOff: Boolean = true
    //var stateMaintenance: Boolean = false
    var mycoin = coinBox()
    //var coinAccept = CoinAcceptor
    var dataStore = scoreGamers()
    var newCoin = CoinAcceptor
    var teste = 0
    while (flagSwitchOff) {
        getSleep()
        println("--------- inserir moeda ${Time.getTimeInMillis()},  ${CoinAcceptor.getCoin()}, ${mycoin.getCredits()}")
        if (newCoin.getCoin() || teste%15 == 0) {
            if (teste >= 1) {
                mycoin.insertCoin(1)
            }
            println("insert credits")
            mycoin.insertCoin(newCoin.resetCoin())
        }
        if (manutencao.getMaintenence() || teste%20 == 0) {
            println("em maintenance")
            flagSwitchOff = !maintenance(mycoin, dataStore)
        }
        // val key = KBD.waitKey(1)
        //if (key != KBD.NONE.toChar()) {
        if ( getKey() == '#' && mycoin.getCredits()) {
            println("coins and credits: {mycoin.getCredits()}")
            println("game")
            dataStore = game(dataStore)
            mycoin.setCredits()
        }

    }
}
*/