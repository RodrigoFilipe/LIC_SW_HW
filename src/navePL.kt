import kotlin.random.Random
import isel.leic.utils.Time
import java.awt.print.Printable
import java.time.LocalDateTime
import java.time.LocalTime
import java.util.Scanner
import java.util.LinkedList
import java.io.File
import java.io.FileReader

const val NONE = KBD.NONE.toChar()
class nave {
    val nave = "}"
    private var line = 0
    private var shot = -1

    fun getLine(): Int {
        return line
    }
    fun getShot(): Int {
        return shot
    }
    fun setLine () {
        LCD.cursor(line, 0)
        LCD.write(" ")
        when(line){
            0 -> line = 1
            else -> line = 0
        }

        LCD.cursor(line, 0)
        LCD.write(nave)
    }
    fun setShot (s: Int) {
        shot = s
    }
    class invader {
        private var line = Random.nextInt(1, 3)
        private var shot = Random.nextInt(0, 11)
        //Random.nextInt(1, 11)
        private var position = 16 // começa mais À esquerda
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
        fun setPosition (p: Int) {
            position = position - p
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
    }
}

class invaderSquadron() {
    var invaderList = LinkedList<nave.invader>()
    fun insertInvaderSquadron() {
        setInvaderSquadron()
        if (invaderList.size < 10) {
            var invader = nave.invader()
            invaderList.addLast(invader)
        }
    }
    fun killInvaderSquadron(invaderkilled: nave.invader) {
        println(invaderkilled)
        invaderList.remove(invaderkilled)
    }
    fun showinvaderSquadron() {
        for (i in invaderList.indices) {
        }
    }
    fun setInvaderSquadron() {
        for (i in invaderList.indices) {
            if (invaderList[i].getPosition() <= 1) {
                println("erro killed invader? ")
                killInvaderSquadron(invaderList[i])
                break
            }
            else{
                invaderList[i].setPosition(1)
            }
        }
    }
    fun getfirstInvaderSquadron(): nave.invader {
        return invaderList.first()
    }

    fun killnave(line: Int): Int {
        for (i in invaderList.indices) {
            if (invaderList[i].getLine() == line) {
                if (invaderList[i].getPosition() <= 1) {
                    println("killednave ${i} - ${line} - invader ${invaderList[i].getLine()}, ${invaderList[i].getPosition()}")
                    return 0
                }
            }
        }
        return 1
    }
    fun ShootInvaderSquadron(line: Int, shot: Int): Int{
        //ao ocorrer tiro , encontra o primeiro invader da linha da nave, se o valor coincindir, elimina a nave e termina o jogo
        for (i in invaderList.indices) {
            if (invaderList[i].getLine() == line) {
                if (invaderList[i].getShot() == shot) {
                    var target = invaderList[i].getTarget()
                    println("nave - ${line} , ${shot}, invader ${i} -  ${this.invaderList[i].getLine()}, ${invaderList[i].getShot()}, ${invaderList[i].getPosition()}")
                    killInvaderSquadron(invaderList[i])
                    println("-----------invader abatido")
                    return target
                }
            }
        }
        insertInvaderSquadron()
        return 0
        //return 0
    }
}

class coinBox (){
    private var coins = 0
    private var credits = 0
    private var games = 0
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
        credits = 0
        games = 0
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
        println("Exist $coins : coins, $credits : credits")
    }
    fun viewCounters() {
        println("Exist $coins : coins, $games: games")
    }
    fun zeroCoin() {
        coins = 0
        credits = 0
    }
    fun readFile() {
        val br = BufferedReader(FileReader(fileName))
        val line = br.readLine()
        val str = line!!.split(",")
        insertCoin(str[0].toString().toInt(), str[1].toString().toInt())
    }
    fun writeFile (){
        val myFile = File(fileName)
        var data = ("${coins},${games}")
        myFile.writeText(data.toString())

        println("Written to the file")
    }
}

fun gameOver (){
}

class fileSystem(){

}

class scoreGamers(){
    object scoreRegister {
        var nome =  ""
        var scoreValue = 0
    }
    var scoreList = LinkedList<scoreRegister>()

    class scoreGamers(){

        var scoreList: MutableList<scoreRegister> = emptyList<scoreRegister>().toMutableList()
        val fileName = "cumulativeScore.txt"
        fun insertScore(nome: String, scoreValue: Int) {
            if (scoreList.size == 20) {
                scoreList.removeLast()
            }
            var newregister = scoreRegister()
            newregister.nome = nome
            newregister.scoreValue = scoreValue
            println("${nome} , ${scoreValue}, ${scoreList.size}")
            var data = mutableListOf<Any>(nome, scoreValue)
            scoreList.addLast(newregister)
            scoreList.sortByDescending { scoreValue }
        }
        fun createListScore(): MutableList<scoreRegister>{
            return scoreList
        }
        fun compareScore(value: Int): Boolean{
            if (scoreList.last().scoreValue < value){
                return true
            }
            return false
        }
        fun readFile (){
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
                print("content, $i")
                if (i == 0){
                    myFile.writeText(content)
                }
                else{
                    //myFile.appendText("${scoreList.removeFirst().nome}, ${scoreList.removeFirst().scoreValue}\n")
                    myFile.appendText(content)
                }
            }
            println("Written to the file")
        }
    }
    fun game () { // com  list
        val myinvaderList = invaderSquadron()
        myinvaderList.insertInvaderSquadron()
        var mynave = nave()
        var liveInvader: Boolean
        var currTime = Time.getTimeInMillis()
        var score = 0
        var levelIncrement = 15
        var gameTime = 15 * 1000 / myinvaderList.getfirstInvaderSquadron().getVelocity() //funciona como nível
        println("Jogo ---------------")
        //um jogo 15 segundos
        while ((Time.getTimeInMillis() - currTime) < gameTime) {
            val key = getKey()
            if (key == '*'){
                mynave.setLine()
            }

            liveInvader = true
            /*while ((liveInvader && (Time.getTimeInMillis() - currTime) < gameTime)) {
                score += myinvaderList.ShootInvaderSquadron(mynave.getLine(), mynave.getShot())
                Thread.sleep(200)
                mynave.setShot(Random.nextInt(0, 9)) // avaliar número escolhido
                mynave.setLine() // avaliar tecla *

                if (myinvaderList.killnave(mynave.getLine()) == 0) {
                    liveInvader = false
                    currTime = Time.getTimeInMillis() - currTime
                    dataStore.insertScore("teste${score}", score)
                }*/
            //}
            ScoreDisplay.setScore(score)
        }
        return dataStore
    }


    fun game () { // sem list
        var listMyInvader = arrayListOf<nave.invader>()
        var mynave = nave()
        var myinvader = nave.invader()
        var liveInvader: Boolean
        var currTime = Time.getTimeInMillis()
        var score = 0
        var levelIncrement = 15
        var gameTime = 15 * 1000 / myinvader.getVelocity() //funciona como nível
        //um jogo 15 segundos
        while ((Time.getTimeInMillis() - currTime) < gameTime) {
            liveInvader = true
            println("myinvader ${myinvader.getLine()} , ${myinvader.getShot()} , ${myinvader.getPosition()} ")
            while ((liveInvader && (Time.getTimeInMillis() - currTime) < gameTime)) {
                if (myinvader.getPosition() == 1) {
                    if (mynave.getLine() == myinvader.getLine()) {
                        println("nave abatida")
                        println("${mynave.getLine()} , ${myinvader.getLine()} ")
                        currTime = 0
                    } else {
                        score -= (5 * myinvader.getVelocity())
                        myinvader = nave.invader()
                        //elimna da lista
                    }
                }
                println("mynave ${mynave.getLine()} , ${mynave.getShot()}, ${mynave.getLine()}, $gameTime, invader position ${myinvader.getPosition()}")
                mynave.setShot(Random.nextInt(0, 9)) // avaliar número escolhido
                mynave.setLine() // avaliar tecla *
                myinvader.setPosition(1)
                Thread.sleep(100)
                //currTime = Time.getTimeInMillis() - currTime
                if (mynave.getLine() == myinvader.getLine() && mynave.getShot() == myinvader.getShot()) {
                    liveInvader = false
                    score += myinvader.getTarget()
                    if ((score % levelIncrement == 0)){
                        myinvader.setShift()
                        myinvader.setVelocity()
                        myinvader.setPosition(myinvader.getVelocity())
                        myinvader.seTarget()
                        print ("--------------------nível = ${myinvader.getVelocity()}\n")
                    }
                    println("fim invader - ${mynave.getShot()}, ${mynave.getLine()} , ${myinvader.getShot()}, ${myinvader.getLine()}")
                }
            }
            println("fim - ${Time.getTimeInMillis() - currTime} ${mynave.getShot()}, ${mynave.getLine()} , ${myinvader.getShot()}, ${myinvader.getLine()}")
            myinvader = nave.invader()
        }
        println("score: " + score)
    }
    */
    class data () {
        fun createtable(){
            // var mytable = fileSystem().readFile()
        }
    }
    fun maintenance(mycoin: coinBox): Boolean {
        var option: String = "-1"
        while (option != "9") {
            println(
                "maintenance options\n" +
                        "0 - Game Off\n" +
                        "1 - Game test\n" +
                        "# - Consult box coin\n" +
                        "# and * - Put Box coin empty\n" +
                        "9 - end\n"
            )
            option = NONE
            while (option == NONE ){
                option = KBD.waitKey(2000)
            }

            if (option == '0') {
                println("encerrado")
                mycoin.writeFile()
                dataStore.writeFile()
                return true
            }
            if (option == '1') {
                println("game")
                //game()
            }
            if (option == '#') {

                println(" * - put coin empty")
                mycoin.viewCoinBox()
                println("press * to reset counters ")
                option = KBD.waitKey(5000)
                if (option == '*') {
                    mycoin.zeroCoin()
                    println("limpar contadores")

                }
            }
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

    fun getSleep () {
        return Thread.sleep(1000)
    }

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
            println("--------- inserir moeda ${Time.getTimeInMillis()}, coins ${newCoin.getCoin()} ${CoinAcceptor.getCoin()}, ${mycoin.getCredits()}")
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
    }
