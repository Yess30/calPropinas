//
//  resultadoViewController.swift
//  calculadora
//
//  Created by Mac19 on 02/07/21.
//

import UIKit

class resultadoViewController: UIViewController {
    
    var cuentaTotal: String?
    var divPersonas: String?

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var divLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        totalLabel.text = cuentaTotal
        divLabel.text = divPersonas
    }
    
    

}
