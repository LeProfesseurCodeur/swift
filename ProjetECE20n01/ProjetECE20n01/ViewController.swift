//
//  ViewController.swift
//  ProjetECE20n01
//
//  Created by Dylan Luchmun on 04/12/2019.
//  Copyright © 2019 Dylan Luchmun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var champNom: UITextField!
    @IBOutlet var champAge: UITextField!
    @IBOutlet var textResultat: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    @IBAction func executerTest(_ sender: Any) {
        let donneeRecueNom = champNom.text
        let donneeRecueAge = champAge.text
        
        var message = ""
        
        message = "Mon nom est \(donneeRecueNom!) et j'ai \(donneeRecueAge!)"
        
        textResultat.text = message
    }
    
}

