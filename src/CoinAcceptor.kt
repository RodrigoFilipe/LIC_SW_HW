object CoinAcceptor {
    const val acceptMask = 0x02
    const val coinMask = 0x40


    fun init(){
        HAL.clrBits(coinMask)
    }

    fun checkCoin(): Boolean{
        if(HAL.isBit(coinMask)){
            HAL.setBits(acceptMask)

         while (HAL.isBit(coinMask));
            Thread.sleep(1000)
            HAL.clrBits(acceptMask)

            println("coin added")
            return true
        }
        else{
            return false
        }
    }


}
fun main(){
    HAL.init()
    CoinAcceptor.init()
    while (true){
        CoinAcceptor.checkCoin()
    }
}