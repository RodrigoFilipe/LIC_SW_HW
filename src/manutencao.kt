object manutencao{
    const val manutMask = 0x80
    fun enterManut(){
        if(HAL.isBit(manutMask)){
            println("enter manutençao")

        }
        else{
            println()
        }
        Thread.sleep(2000)
    }
}

fun main(){
    HAL.init()
    while (true){
        manutencao.enterManut()
    }
}