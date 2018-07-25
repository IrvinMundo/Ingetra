//
//  NoteDetailViewController.swift
//  INGETRA
//
//  Created by Irvin Mundo on 02/06/17.
//  Copyright © 2017 MundoSystems. All rights reserved.
//

import UIKit

class NoteDetailViewController: UIViewController {
    
    @IBOutlet weak var cont: UITextField!
    var ti="";
    var co="";
    @IBOutlet weak var titulo: UILabel!
    
    
   
    
    var note: Note!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        titulo.text = ti
        cont.text = co
    }
    
}
