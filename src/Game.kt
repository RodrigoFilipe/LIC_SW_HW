import kotlin.random.Random
import isel.leic.utils.Time
import java.util.LinkedList
import kotlinx.coroutines.*
import kotlinx.coroutines.flow.*
import java.util.concurrent.Executors


const val NONE = KBD.NONE.toChar()

operator fun Byte.Companion.get(vararg ints: Int) = ByteArray(ints.size) { pos -> ints[pos].toByte() }

fun designChar(design: ByteArray): Char{
    return design.toString().toCharArray()[0]
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
        private var position = 15 // começa mais À esquerda
        private var velocity = 1 // para aumentar de acordo com o nivel do jogo, pode ser 1 segundo ou menos
        private var shift =  1 // inicialmemte move-se uma posição para a direita, que pode ser incrementada de acordo com o nível
        // de acordo com o nível pode a linha variar ao longo do percurso, bas ta criar função random em setinvaderEsquadron

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
        fun setPosition () {
            position = position - getShift()
        }
        fun setVelocity () {
            velocity++
        }
        fun setShift () {
            shift++
        }
        fun setLevel (){
            setVelocity()
            setShift()
        }
    }
}

class invaderSquadron() {
    val sentences = arrayOf(
        "Game Over",
        "Nave killed",
        "Time end",
        "See ScoreDisplay")
    var invaderList = LinkedList<nave.invader>()

    fun insertInvaderSquadron() {
        setInvaderSquadron()
        if (invaderList.size < 18) {
            var invader = nave.invader()
            invaderList.addLast(invader)
        }
        showinvaderSquadron()
    }

    fun showinvaderSquadron() {
        LCD.clear(0,2)
        LCD.clear(1,2)
        for (i in invaderList.indices) {
            LCD.cursor(invaderList[i].getLine(), invaderList[i].getPosition())
            LCD.write(invaderList[i].getShot().toString())
        }
    }

    fun setInvaderSquadron() {
        for (i in invaderList.indices) {
            invaderList[i].setPosition()
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
            if (invaderList[i].getPosition() <= 2) {
                LCD.placard(true,true, sentences[1].toString(), sentences[3].toString())
                getSleep(10)
                return true
            }
        }
        return false
    }

    fun ShootInvaderSquadron(line: Int, shot: Int): Boolean{
        //ao ocorrer tiro , encontra o primeiro invader da linha da nave, se o valor coincindir
        for (i in invaderList.indices) {
            if (invaderList[i].getLine() == line) {
                if (invaderList[i].getShot() == shot) {
                    LCD.cursor(invaderList[i].getLine(), invaderList[i].getPosition())
                    LCD.write(" ")
                    invaderList.remove(invaderList[i])
                    return true
                }
                else{
                    return false
                }
            }
        }
        return false
    }
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

fun game (nextLevel: Int): Int { // com  list
    LCD.clear()
    val sentences = arrayOf(
        "Game Over",
        "Time end",
        "See ScoreDisplay",
        "Score Records")
    var mynave = nave()
    mynave.viewNave()
    val myinvaderList = invaderSquadron()
    myinvaderList.insertInvaderSquadron()
    var liveInvader= true
    var currTime = Time.getTimeInMillis()
    var score = 0
    var firstLevel = nextLevel
    var gameTime = 60 * 1000 / myinvaderList.getfirstInvaderSquadron().getVelocity() // gameTime =  60 * 1000 = 1 minuto -> incrementa 1 por alteração de nível  ->  nivel 2 para para 30 seg.
    ScoreDisplay.init() // existe função para ficar tudo a zero? Quando o score anterior tem mais digitos aparecem.100 > 45 = 145
    var initialTime = Time.getTimeInMillis()
    var target = firstLevel/10
    if (target < 5){
        target = 5
    }
    while (liveInvader && (Time.getTimeInMillis() - currTime) < gameTime) {
        val key = KBD.waitKey(300)
        if (key == '*') {
            mynave.setLine()
        }
        if (key in '0'..'9' && mynave.getShot() == -1) {
            mynave.setShot(key.digitToInt())
        }
        if (key == '#' && mynave.getShot() != -1 ){
            if (myinvaderList.ShootInvaderSquadron(mynave.getLine(), mynave.getShot()))
                score += target
            mynave.setShot(-1)
            if (score > firstLevel) {
                firstLevel += firstLevel
                target += nextLevel/10
                nave.invader().setLevel()
            }
        }

        ScoreDisplay.setScore(score)

        if (myinvaderList.killnave(mynave.getLine())) {
            liveInvader = false
        } else {
            if ((Time.getTimeInMillis() - initialTime) > 600L ){
                initialTime = Time.getTimeInMillis()
                myinvaderList.insertInvaderSquadron()
            }
        }
    }
    if (liveInvader){
        LCD.placard(true,true, sentences[1].toString() , sentences[2].toString())
        getSleep(10)
    }
    return score
}

fun insertName(): String {
    val sentences = arrayOf(
        "name: 1-8 CHAR",
        "Write your name",
        "* - for erase",
        "Keys: <1 OK-2 3>",
        "#-Can save Name"
    )
    //    LCD.placardMaintenance(sentences, sentences.size - 1)
    var name = ""
    var option = NONE
    var letter = 0x41
    val minLength = 1
    LCD.clear()
    //LCD.textLine(0, "1name: ${name}${letter.toChar()}")
    val scope = CoroutineScope(CoroutineName ("MyScope"))
    var job = scope.launch {
        while (isActive) {
            if (name.length > minLength ){
                // placardHelp(sentences, sentences.size - 1)
                LCD.placardHelp(sentences, sentences.size - 1)
            }
            else{
                //placardHelp(sentences, sentences.size - 1)
                LCD.placardHelp(sentences, sentences.size)
            }
            ensureActive()
        }
//delay(100L)
    }
    while ((option != '#' || name.length < 1) && name.length < 8) {
        option = NONE
        LCD.clear(0,0)
        LCD.textLine(0, "name: ${name}${letter.toChar()}")
        while (option == NONE) {
            option = KBD.waitKey(500)
        }
        if (option == '1') {
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
    runBlocking {
        job.cancelAndJoin()
    }
    return name
}

fun match(dataStore: scoreGamers){
    val sentences = arrayOf(
        "Game Over",
        "Time end",
        "See ScoreDisplay",
        "Score Records",
        "No record",
        "next levels")
    LCD.clear()
    LCD.textLine(0, sentences[5] + dataStore.scoreAverage().toString() )
    getSleep(10)
    LCD.clear()

    var myscore = game(dataStore.scoreAverage())
    ScoreDisplay.setScore(myscore)
    if (dataStore.compareScore(myscore)) {
        dataStore.insertScore(insertName().toString(), myscore)
        // getSleep(10)
    }
    else {
        LCD.textLine(0, sentences[4].toString())
        getSleep(20)
    }

    LCD.textLine(0, sentences[3].toString())
    //getSleep(5)
    dataStore.showFile()
}

fun maintenance(mycoin: Statistics.coinBox, dataStore: scoreGamers): Boolean {
    val sentences = arrayOf(
        "maintenance:",
        "0 - Shut down" ,
        "1 - Game test",
        "# - Consult Box",
        "#&*-Box empty",
        "9 - next Game ",
        "Shut down",
        "",
        " 3s" )
    //tentar executar em paralelo a visualização do placard, enquanto corre a avaliação da escolha, e será interrompido quando necessário

    var option = NONE
    while (true) {
        val scope = CoroutineScope(CoroutineName ("MyScope"))
        var job = scope.launch {
            while (isActive) {
                LCD.maintenanceHelp(sentences, 6)
                ensureActive()
            }
        }
        option = NONE
        while (option == NONE ){
            option = KBD.waitKey(500L)
        }
        println(option)
        if (option == '9') {
            runBlocking {
                job.cancelAndJoin()
            }
            getSleep(10)
            LCD.clear()
            return false
        }
        if (option == '0') {
            runBlocking {
                job.cancelAndJoin()
            }
            LCD.placard(true, true,  sentences[6],  sentences[7])
            getSleep(10)
            dataStore.pushData()
            mycoin.pushData() // alteração PL
            return true
        }
        if (option == '1') {
            runBlocking {
                job.cancelAndJoin()
            }
            LCD.clear()
            println("game")
            game(0)
            TUI.clearScore()
        }
        if (option == '#') {
            runBlocking {
                job.cancelAndJoin()
            }
            LCD.clear()
            LCD.write(sentences[4] + sentences[8])
            if (KBD.waitKey(3000) == '*'){
                mycoin.zeroCoin()
                mycoin.viewCoinBox()
            }
            mycoin.viewCoinBox()
            getSleep(10)
        }
    }
    LCD.clear()
}

