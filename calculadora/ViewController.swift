//
//  ViewController.swift
//  calculadora
//
//  Created by Mac19 on 01/07/21.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    var cerebroCal = Cerebro()
    
    var propina:Int!
    var persona: Int!
    var cuenta: Float!

    @IBOutlet weak var tCuenta: UITextField!
    @IBOutlet weak var personasLabel: UILabel!
    @IBOutlet weak var porcientoLabel: UILabel!
    @IBOutlet weak var personaSlider: UISlider!
    @IBOutlet weak var porcientoSlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tap:UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(DismissKeyboar))
        view.addGestureRecognizer(tap)
        
        }
    
    @objc func DismissKeyboar(){
        view.endEditing(true)
    }

    @IBAction func calcularButton(_ sender: UIButton) {
       
        cuenta = Float(tCuenta.text ?? "0")
        
        print(propina,persona,cuenta)
        
        cerebroCal.retCuentaPropina(cuenta: cuenta, porciento: Float(propina), numPer: Float(persona))
        performSegue(withIdentifier: "resultado", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "resultado" {
            let destinoVC = segue.destination as! resultadoViewController
            destinoVC.cuentaTotal = cerebroCal.mostrarTotal()
            destinoVC.divPersonas = cerebroCal.mostrarDiv()
            
        }
    }
    
    @IBAction func porcientoSAction(_ sender: UISlider){
        porcientoLabel.text = "\(String(format:"%.0f",sender.value)) %"
        propina = Int(sender.value)
    }
    
    @IBAction func personasSAction(_ sender: UISlider) {
        personasLabel.text = "\(String(format:"%.0f",sender.value)) P."
        persona = Int(sender.value)
        
    }
}

