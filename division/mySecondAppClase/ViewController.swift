//
//  ViewController.swift
//  mySecondAppClase
//
//  Created by Francisco Mestizo on 30/09/22.
//  A01731549

import UIKit

class ViewController: UIViewController {
    
    //IMPORTANTE. Un let es una variable que vamos a cambiar una sola vez en el codigo
    //Pero una variable var, se puede cambiar n veces
    
    @IBOutlet weak var numeroInferior: UITextField!
    @IBOutlet weak var numeroSuperior: UITextField!
    @IBAction func dividir(_ sender: Any) {
        //let divisorUno = Float(numeroSuperior.text ?? "1")
        //let dividendoUno = Float((numeroInferior.text ?? "0")) //Esta instruccion quiere decir que si no hay ningun dato en el text field, tomara 0 como default
        //var mensaje = "Favor de completar ambos campos"
        
        //if(divisorUno != nil || dividendoUno != nil){
        //    let resultado = (dividendoUno!) / (divisorUno!)
        //    mensaje = String(resultado)
        //}
        
        let divisorUno = Float(numeroSuperior.text ?? "1")
        let dividendoUno = Float((numeroInferior.text ?? "0")) //Esta instruccion quiere decir que si no hay ningun dato en el text field, tomara 0 como default
        var mensaje = "Favor de completar ambos campos"
        
        if(divisorUno != nil || dividendoUno != nil){
            let resultado = (dividendoUno!) / (divisorUno!)
            mensaje = String(resultado)
        }
        
        
        let alert = UIAlertController(title: "Alerta!!", message: mensaje, preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    @IBAction func botonUnoClick(_ sender: Any) {
        //Creamos la alerta para cuando se de click en el boton
        let alert = UIAlertController(title: "Alerta!!", message: usuarioTextField.text, preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
        self.present(alert, animated: true, completion: nil)
    }
    @IBOutlet weak var tituloLabel: UILabel!
    @IBOutlet weak var usuarioTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad() //Verifica que la aplicacion cargo
        
        tituloLabel.text = "Segunda Aplicacion"
        tituloLabel.textColor = UIColor(red: 36/255, green: 80/255, blue: 155/255, alpha: 1.0)
    }


}

