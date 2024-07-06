class Statistics {

    class coinBox (){
        private var coins = 0
        private var credits = coins
        private var games = coins
        val fileName = "contability.txt"
        fun insertCoin(coin: Int){
            if (this.credits < 98) {
                this.coins += coin
                this.credits += coin * 2
            }
        }

        fun insertCoin(coin: Int, games: Int){
            this.coins = coin
            this.games = games
        }

        fun getCoins(): Int{
            return coins
        }

        fun setCoins() {//Não usado
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
            LCD.placard(true, true, "coins = ${coins.toString()}", "games = ${games.toString()}")
            getSleep(20)
        }

        fun zeroCoin() {
            coins = 0
            games = 0
        }

        fun popData() {
            val str =  FileAccess().readFileC(fileName)
            insertCoin(str[0].toString().toInt(), str[1].toString().toInt())
        }

        fun pushData (){
            FileAccess().writeFileC(fileName, "${coins},${games}")
        }
    }
}