import isel.leic.UsbPort

object CoinAcceptor {
    const val acceptMask = 0x02
    const val coinMask = 0x40

    fun init(){
        HAL.clrBits(coinMask)
    }

    fun checkCoin(){
        if(HAL.isBit(coinMask)){
            println("coin added")
            HAL.setBits(acceptMask)
        }
        else{
            println()
            HAL.clrBits(acceptMask)
        }
        Thread.sleep(500)
    }

}
fun main(){
    HAL.init()
    CoinAcceptor.init()
    while (true){
        CoinAcceptor.checkCoin()
    }
}