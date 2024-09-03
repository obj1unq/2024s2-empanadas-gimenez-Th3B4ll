
object galvan {
    var sueldo = 15000
    var saldo =  0

    method sueldo(_sueldo) {
        sueldo = _sueldo
    }
    method sueldo() {
        return sueldo
    }
    method cobrarSueldo() {
        saldo += sueldo
    }
    method gastar(cuanto) { 
        saldo -= cuanto       
    }
    method deuda() {
        return saldo.min(0).abs()
        //return if (saldo <0) saldo else 0
    }
    
    method dinero() {
        return saldo.max(0).abs()
        // return if (saldo >= 0) saldo else 0
    }
}

object baigorria {
    var empanadasVendidas = 0
    var totalCobrado = 0
    
    method totalCobrado() {
        return totalCobrado
    }

    method vender(cantEmpanadas) {
        empanadasVendidas += cantEmpanadas
        // cantidadVendidas = cantidadVendidas + cantidad
    }

    method sueldo() {
        return empanadasVendidas * 15
    }
    method cobrarSueldo() {
        totalCobrado += self.sueldo()
        empanadasVendidas = 0
    }
}

object gimenez {
    var fondo = 300000

    method fondo() {
        return fondo
    }
    method pagarSueldo(empleado) {
        fondo -= empleado.sueldo()
        empleado.cobrarSueldo()
    }
}