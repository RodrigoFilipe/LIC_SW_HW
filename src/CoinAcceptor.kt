import isel.leic.UsbPort

object CoinAcceptor {
    const val acceptMask = 0x02
    const val coinMask = 0x40
    private var coin = 0

    fun init(){
        HAL.clrBits(coinMask)
    }

    fun checkCoin(){
        if(HAL.isBit(coinMask)){
            println("coin added")
            HAL.setBits(acceptMask)
            coin++
        }
        else{
            println()
            HAL.clrBits(acceptMask)
        }
        Thread.sleep(500)
    }
    fun getCoin(): Int{
        return coin
    }
    fun resetCoin(): Int{
        coin = 0
        return coin
    }

}
fun main(){
    HAL.init()
    CoinAcceptor.init()
    while (true){
        CoinAcceptor.checkCoin()
    }
}