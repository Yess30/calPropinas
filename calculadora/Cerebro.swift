//
//  Cerebro.swift
//  calculadora
//
//  Created by Mac19 on 02/07/21.
//

import Foundation

struct Cerebro {
    
    
    var prop: propina?
    
    mutating func retCuentaPropina(cuenta: Float, porciento: Float, numPer: Float) {
        let valProp = (cuenta / 100)*porciento
        let valTotal = valProp+cuenta
        let division = valTotal / numPer
        prop = propina(valorTotal: valTotal, valorDiv: division)
    }
    
    func mostrarTotal() -> String {
        let total = String(format: "%.2f", prop?.valorTotal ?? 0.0)
        return total
    }
    
    func mostrarDiv() -> String {
        let div = String(format: "%.2f", prop?.valorDiv ?? 0.0)
        return div
    }
    
}
