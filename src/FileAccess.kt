import java.io.BufferedReader
import java.io.File
import java.io.FileReader

class FileAccess(){
    fun readFileC(fileName: String): List<String> {
        val br = BufferedReader(FileReader(fileName))
        val line = br.readLine()
        return (line!!.split(","))
        //insertCoin(str[0].toString().toInt(), str[1].toString().toInt())
    }
    fun writeFileC (fileName: String, data: String ){
        val myFile = File(fileName)
        //var data = ("${coins},${games}")
        println(fileName)
        myFile.writeText(data)

        //println("Written to the file")
    }
    fun readFileLP (fileName: String): MutableList<scoreRegister> {
        val br = BufferedReader(FileReader(fileName))
        var readScore = mutableListOf <scoreRegister>()
        var line = br.readLine()
        while (line != null){
            val str = line!!.split(",")
            readScore.add(scoreRegister(str[0].toString(), str[1].toString().toInt()))
            line = br.readLine()
        }
        return readScore
    }
    fun writeFileLP (fileName: String, writeScore: MutableList<scoreRegister>){
        val myFile = File(fileName)
        for (i in writeScore.indices) {
            val content = writeScore[i].nome + "," + writeScore[i].scoreValue + "\n"
            //print("content, $i")
            if (i == 0) {
                myFile.writeText(content)
            } else {
                //myFile.appendText("${scoreList.removeFirst().nome}, ${scoreList.removeFirst().scoreValue}\n")
                myFile.appendText(content)
            }
        }
    }
}