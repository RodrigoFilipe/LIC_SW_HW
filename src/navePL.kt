import kotlin.random.Random
import isel.leic.utils.Time
import java.awt.print.Printable
import java.time.LocalDateTime
import java.time.LocalTime
import java.util.Scanner
import java.util.LinkedList
import java.io.File
import java.io.InputStream
import javax.swing.JTable

class nave {
    private var line = 1
    private var shot = -1

    fun getLine(): Int {
        return line
    }
    fun getShot(): Int {
        return shot
    }
    fun setLine () {
        line = (line%2) + 1
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
    fun insertCoin(){
        coins ++
        credits += 2
    }
    fun getCoins(): Int{
        return coins
    }
    fun setCoins() {
        coins = 0
    }
    fun getCredits(): Int{
        return credits
    }
    fun setCredits() {
        credits--
    }
    fun viewCoinBox() {
        println("Exist $coins : coins, $credits : credits")
    }
    fun zeroCoin() {
        this.coins = 0
        this.credits = 0
    }
    fun readFile() {

    }
    fun writeFile (){
        var dataContability = mutableListOf<MutableList<Any>>()
        var data = mutableListOf<Any>(coins,coins*2-credits)
        dataContability.add(data)
        fileSystem().writeFile("contability.txt", dataContability)
    }
}
fun gameOver (){
}

class fileSystem(){
  //  fun readFile (file: File): Int {

   // }
    fun writeFile (name: String, data: MutableList<MutableList<Any>>){
                   //data: mutableListOf<MutableList<Any>>) {
        val fileName = name
        val myFile = File(fileName)
        var content = data.removeFirst().toString().drop(1).dropLast(1)
        myFile.writeText(content+"\n")
        for (i in data.indices) {
            content = data.removeFirst().toString().drop(1).dropLast(1)
            myFile.appendText(content + "\n")
        }
        println("Written to the file")
    }
}

class scoreGamers(){
    object scoreRegister {
        var nome =  ""
        var scoreValue = 0
    }
    var scoreList = LinkedList<scoreRegister>()

    fun insertScore(nome: String, scoreValue: Int) {
        if (scoreList.size == 20) {
            scoreList.removeLast()
        }
        val newregister = scoreRegister
        newregister.nome = nome
        newregister.scoreValue = scoreValue
        scoreList.addLast(newregister)
        scoreList.sortByDescending { scoreValue }
    }
    fun createListScore(): LinkedList<scoreRegister> {
        return scoreList
    }
    fun compareScore(value: Int): Boolean{
        if (scoreList.last().scoreValue < value){
            return true
        }
        return false
    }
    fun readFile (){

    }
    fun writeFile (){
        var dataScore = mutableListOf<MutableList<Any>>()
        for(i in scoreList.indices) {
            var data = mutableListOf<Any>(scoreList[i].nome, scoreList[i].scoreValue)
            dataScore.add(data)
            fileSystem().writeFile("cumulativeScore.txt", dataScore)
        }

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
        liveInvader = true
        while ((liveInvader && (Time.getTimeInMillis() - currTime) < gameTime)) {
            score += myinvaderList.ShootInvaderSquadron(mynave.getLine(), mynave.getShot())
            Thread.sleep(200)
            mynave.setShot(Random.nextInt(0, 9)) // avaliar número escolhido
            mynave.setLine() // avaliar tecla *

            if (myinvaderList.killnave(mynave.getLine()) == 0) {
                liveInvader = false
                currTime = Time.getTimeInMillis() - currTime
                scoreGamers().insertScore("teste", score)
            }
        }
        println("score ${score}\n")
    }
}

/*
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
                    "0 - Game switch Off\n" +
                    "1 - Game test\n" +
                    "# - Consult box coin\n" +
                    "# and * - Put Box coin empty\n" +
                    "9 - playing\n"
        )
        option = readln()
        if (option == "0") {
            println("encerrado")
            mycoin.writeFile()
            scoreGamers().writeFile()
            return true
        }
        if (option == "1") {
            game()
        }
        if (option == "#") {

            println(" * - put coin empty")
            mycoin.viewCoinBox()
            val option = readln()
            if (option == "*") {
                mycoin.zeroCoin()
                println("limpar contadores")

            }
        }
    }
    return false
}

 //colocar outra variável para imagem da nave
    // position para mudar de linha
    // shot para quando ocorre o disparo o valor associado vai ser avaliado com o número do invader

fun main(args: Array<String>) {

    var flagSwitchOff: Boolean = false
     //var stateMaintenance: Boolean = false
    var mycoin = coinBox()
    //while (mycoin.getCredits() == 0) {
        //avaliar coin

 //   }
     while (!flagSwitchOff) {
         println("maintenance options y/n")
         val option = readln()
         if (option == "y") {
             flagSwitchOff = maintenance(mycoin)
         }
         else {
             // pensar quando a opção seja terminar  return (true or false)
             println("insert 1€ coin y/n: ")
             val coin = readln()
             if (coin == "y") {
                 mycoin.insertCoin()
                 println("coins and credits: ${mycoin.getCoins()}, ${mycoin.getCredits()}")
             }
             while ((mycoin.getCredits() > 0)) {
                 println("coins and credits: ${mycoin.getCoins()}, ${mycoin.getCredits()}")
                 game()
                 mycoin.setCredits()
             }
         }
     }
 }