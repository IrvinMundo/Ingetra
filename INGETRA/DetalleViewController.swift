//
//  DetalleViewController.swift
//  INGETRA
//
//  Created by Irvin Mundo on 02/06/17.
//  Copyright © 2017 MundoSystems. All rights reserved.
//

import UIKit


class DetalleViewController: UIViewController {
    var laactividad:String=" "
    var eltexto:String=" "
    
    @IBOutlet weak var actividad: UILabel!
    
    @IBOutlet weak var texto: UITextView!
    @IBAction func abrirLink1(_ sender: Any) {
        let youtubeId = "iICDtASKZJ8"
        var youtubeUrl = NSURL(string:"youtube://\(youtubeId)")!
        if UIApplication.shared.canOpenURL(youtubeUrl as URL){
            UIApplication.shared.open(youtubeUrl as URL)
        } else{
            youtubeUrl = NSURL(string:"https://www.youtube.com/watch?v=\(youtubeId)")!
            UIApplication.shared.open(youtubeUrl as URL)
        }
    }
    @IBAction func abrirLink2(_ sender: Any) {
        let youtubeId = "iICDtASKZJ8"
        var youtubeUrl = NSURL(string:"youtube://\(youtubeId)")!
        if UIApplication.shared.canOpenURL(youtubeUrl as URL){
            UIApplication.shared.open(youtubeUrl as URL)
        } else{
            youtubeUrl = NSURL(string:"https://www.youtube.com/watch?v=\(youtubeId)")!
            UIApplication.shared.open(youtubeUrl as URL)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        actividad.text=laactividad
        texto.text=eltexto
        
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
