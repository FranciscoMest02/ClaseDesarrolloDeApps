//
//  ViewController.swift
//  calculadora
//
//  Created by Alumno on 05/10/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var ans: UILabel!
    
    @IBAction func suma(_ sender: Any) {
        let primero = Float(num1.text ?? "0")
        let segundo = Float(num2.text ?? "0")
        if(primero == nil || segundo == nil){
            let alert = UIAlertController(title: "Alerta!!", message: "Ingresa los dos numeros", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alert, animated: true, completion: nil)
        } else {
            var res = primero! + segundo!
            ans.text = String(res)
        }
    }
    @IBAction func resta(_ sender: Any) {
        let primero = Float(num1.text ?? "0")
        let segundo = Float(num2.text ?? "0")
        if(primero == nil || segundo == nil){
            let alert = UIAlertController(title: "Alerta!!", message: "Ingresa los dos numeros", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alert, animated: true, completion: nil)
        } else {
            var res = primero! - segundo!
            ans.text = String(res)
        }
    }
    @IBAction func mult(_ sender: Any) {
        let primero = Float(num1.text ?? "1")
        let segundo = Float(num2.text ?? "1")
        if(primero == nil || segundo == nil){
            let alert = UIAlertController(title: "Alerta!!", message: "Ingresa los dos numeros", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alert, animated: true, completion: nil)
        } else {
            var res = primero! * segundo!
            ans.text = String(res)
        }
    }
    @IBAction func div(_ sender: Any) {
        let primero = Float(num1.text ?? "0")
        let segundo = Float(num2.text ?? "1")
        if(primero == nil || segundo == nil){
            let alert = UIAlertController(title: "Alerta!!", message: "Ingresa los dos numeros", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "Cerrar", style: UIAlertAction.Style.cancel))
            self.present(alert, animated: true, completion: nil)
        } else {
            var res = primero! / segundo!
            ans.text = String(res)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

