//
//  ViewController.swift
//  MiPrimerProyecto
//
//  Created by PABLO HERNANDEZ JIMENEZ on 22/3/18.
//  Copyright © 2018 PABLO HERNANDEZ JIMENEZ. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtUser:UITextField?
    @IBOutlet var txtPass:UITextField?
    @IBOutlet var btnRegistra:UIButton?
    @IBOutlet var btnLogin:UIButton?
    @IBOutlet var txtVConsola:UITextView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func eventoClickLogin(){
        if txtUser?.text == "Pablo" && txtPass?.text == "123"{
            self.performSegue(withIdentifier: "tran1", sender: self)
        }
        else{
            txtVConsola?.text=String(format: "Usuario incorrecto: Esperaba en usuario: Pablo y contraseña: 123 e introdujo usuario: %@ y contaseña: %@", (txtUser?.text)!,(txtPass?.text)!)
        }
    }

}

