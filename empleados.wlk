object galvan {
  var plata = 0
  var sueldo = 15000
  var deuda = 0
  
  method plata() = plata
  
  method sueldo() = sueldo
  
  method sueldo(_sueldo) {
    sueldo = _sueldo
  }
  
  method cobrar() {
    if ((deuda > 0) and (sueldo < deuda)) {
      deuda -= sueldo
    } else {
      if ((deuda > 0) and (sueldo > deuda)) {
        plata = sueldo - deuda
        deuda = 0
      } else {
        plata += sueldo
      }
    }
  }
  
  method gastar(cuanto) {
    if (plata == 0) {
      deuda = cuanto
    } else {
      if (cuanto < plata) {
        plata -= cuanto
      } else {
        deuda = (deuda + cuanto) - plata
        plata = 0
      }
    }
  }
  
  method deuda() = deuda
}

object baigorria {
  var empven = 0
  var precioEmpanada = 15
  var sueldo = 0
  var plata = 0
  var totalCobrado = 0
  
  method precioEmpanada(_precioEmpanada) {
    precioEmpanada = _precioEmpanada
  }
  
  method venta(cant) {
    empven += cant
    sueldo += cant * precioEmpanada
  }
  
  method cobrar() {
    plata += sueldo
    totalCobrado += sueldo
    empven = 0
    sueldo = 0
  }
  
  method totalCobrado() = totalCobrado
  
  method plata() = plata
}

object gimenez {
  var fondo = 300000
  
  method pagar(empleado) {
    fondo -= empleado.sueldo()
    empleado.cobrar()
  }
  
  method fondo() = fondo
}