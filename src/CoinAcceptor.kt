import isel.leic.UsbPort

object CoinAcceptor {
    const val acceptMask = 0x02
    const val coinMask = 0x40

    fun init(){
        HAL.clrBits(coinMask)
    }

    fun checkCoin(){
        if(HAL.isBit(coinMask)){

        }
    }

}