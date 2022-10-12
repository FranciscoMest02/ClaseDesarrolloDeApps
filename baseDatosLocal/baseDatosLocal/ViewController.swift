//
//  ViewController.swift
//  baseDatosLocal
//
//  Created by Alumno on 12/10/22.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {
    
    @IBOutlet weak var creacionTextField: UITextField!
    @IBOutlet weak var busquedaTextField: UITextField!
    @IBOutlet weak var resultadoLabel: UILabel!
    @IBAction func buscarDatos(_ sender: Any) {
        //Hacer uso de Realm
        let realm = try!Realm()
        //Usar Realm para buscar (arrow function)
        let persona = realm.objects(Persona.self)
        //Con esta instruccion le decimos que busque en la base de datos todos las personas que tengan ese valor en el nombre
        let busquedaDePersona = persona.where{
            $0.nombre == busquedaTextField.text!
        }
        
        resultadoLabel.text = busquedaDePersona[0].nombre
    }
    @IBAction func agregarDatos(_ sender: Any) {
        //Creacion del objeto persona
        let persona = Persona(value: ["nombre": creacionTextField.text])
        
        //Guardamos los datos en la BD local
        let realm = try!Realm()
        try! realm.write{
            realm.add(persona)
        }
        
        //Alerta de que guardamos los datos correctamente
        let alert = UIAlertController(title: "Mensaje", message: "Dato agregado correctamente", preferredStyle: UIAlertController.Style.alert)
        alert.addAction(UIAlertAction(title: "Click", style: UIAlertAction.Style.default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

//Creamos el objeto persona
class Persona: Object {
    @Persisted var nombre = ""
    @Persisted var password = ""
    @Persisted var mail = ""
    @Persisted var edad = ""
}

