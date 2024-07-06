
class Scores (nome: String, value: Int) {
    var nome = nome
    var scoreValue = value
}

class scoreGamers() {
    var scoreList = mutableListOf<Scores>()
    val fileName = "cumulativeScore.txt"
    fun insertScore(name: String, scoreValue: Int) {
        if (scoreList.size == 20) {
            scoreList.removeLast()
        }

        scoreList.add(Scores(name, scoreValue))
        //scoreList.
        scoreList.sortByDescending { it.scoreValue }
    }

    fun createListScore(): MutableList<Scores> {
        return scoreList
    }

    fun compareScore(value: Int): Boolean {
        if (scoreList.isEmpty())
            return true
        if (scoreList.last().scoreValue < value || scoreList.size < 19) {
            return true
        }
        return false
    }

    fun popData() {
        scoreList = FileAccess().readFileLP(fileName)
    }

    fun scoreAverage(): Int {
        if (scoreList.map { it.scoreValue }.average().toInt() > 0)
            return scoreList.map { it.scoreValue }.average().toInt()
        return 1
    }

    fun pushData(){
        FileAccess().writeFileLP(fileName, scoreList)
    }

    fun showFile() {
        val sleep = (scoreList.size)
        for (i in scoreList.indices) {
            LCD.textLine(
                1, String.format("%2s", (i + 1).toString())
                        + "-" + String.format("%-8s", scoreList[i].nome)
                        + "-" + String.format("%4s", scoreList[i].scoreValue.toString())
            )
            getSleep(sleep)
        }
    }

}