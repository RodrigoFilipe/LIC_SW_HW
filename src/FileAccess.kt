import java.io.BufferedReader
import java.io.File
import java.io.FileReader

class FileAccess(){
   /* fun writeFile (name: String, data: MutableList<Any>){
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
    } */
    fun writeFile (fileName: String, scoreList: MutableList<scoreRegister>){
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
    /*

        val myFile = File(fileName)
        for (i in scoreList.indices) {
            val content = scoreList[i].nome + "," + scoreList[i].scoreValue + "\n"
            if (i == 0) {
                myFile.writeText(content)
            } else {
                myFile.appendText(content)
            }
        }
    }
*/

    fun readFile (fileName: String): MutableList<scoreRegister>  {
        val br = BufferedReader(FileReader(fileName))
        var scoreList: MutableList<scoreRegister> = mutableListOf()
        var line = br.readLine()
        while (line != null) {
            val str = line!!.split(",")
            scoreList.addLast(scoreRegister(str[0].toString(), str[1].toInt()))
            line = br.readLine()
        }
        return scoreList
    }
}