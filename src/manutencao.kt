object manutencao{
    const val manutMask = 0x80
    private var inMaintenanceMode = false
    fun enterManut(){
        if(HAL.isBit(manutMask)){
            println("enter manutençao")
            inMaintenanceMode = true

        }
        else{
            println()
            inMaintenanceMode = false
        }
        Thread.sleep(2000)
    }
    fun getMaintenence(): Boolean{
        return inMaintenanceMode
    }
}

fun main(){
    HAL.init()
    while (true){
        manutencao.enterManut()
    }
}