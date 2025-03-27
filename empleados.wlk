object galvan{
    var plata = 0
    var sueldo = 15000
    var deuda = 0
    
    method plata(){
        return plata
    }

    method sueldo(){
        return sueldo
    }

    method sueldo(monto){
      sueldo = monto
    }

    method cobrar(){
      plata = plata + sueldo
    }
    method deuda() {
      return deuda
    }

    method gastar(cuanto){
      deuda = deuda + cuanto - plata
    }
}

object baigorria {
  var empven = 0
  var sueldo = 0
  var plata = 0

  method venta(cant){
    empven = empven + cant
    sueldo = sueldo + cant * 15
  }

  method sueldo() {
    return sueldo
  }

  method plata(){
    return plata
  }

  method cobrar(){
    plata = plata + sueldo
  }
}

object gimenez {
  var fondo = 300000

  method pagar(empleado){
    fondo = fondo - empleado.sueldo()
    empleado.cobrar()
  }
}