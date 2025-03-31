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
      if (deuda > 0 and sueldo < deuda){
        deuda = deuda - sueldo
      } else
      if (deuda > 0 and sueldo > deuda){
        plata = sueldo - deuda
        deuda = 0
      } else{
      plata = plata + sueldo
      }
    }

    method gastar(cuanto){
      if (plata == 0) {
        deuda = cuanto
      } else
      if (cuanto < plata){
        plata = plata - cuanto
      } else {
        deuda = deuda + cuanto - plata
        plata = 0
      }
    }

    method deuda() {
      return deuda
    }
}

object baigorria {
  var empven = 0
  const precioEmpanada = 15
  var sueldo = 0
  var plata = 0
  var totalCobrado = 0

  method venta(cant){
    empven = empven + cant
    sueldo = sueldo + cant * precioEmpanada
  }

  method cobrar(){
    plata = plata + sueldo
    totalCobrado = totalCobrado + sueldo
    empven = 0
    sueldo = 0
  }

method totalCobrado(){
  return totalCobrado
}

  method plata(){
    return plata
  }
}

object gimenez {
  var fondo = 300000

  method pagar(empleado){
    fondo = fondo - empleado.sueldo()
    empleado.cobrar()
  }
}