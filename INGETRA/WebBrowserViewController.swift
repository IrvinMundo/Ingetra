//
//  WebBrowserViewController.swift
//  INGETRA
//
//  Created by Irvin Mundo on 02/06/17.
//  Copyright © 2017 MundoSystems. All rights reserved.
//

import UIKit

class WebBrowserViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let direccion = URL(string: "https://goo.gl/forms/CywFdabjn78Y7UOf1")
        let direccionrequest = URLRequest(url: direccion!)
        webView.loadRequest(direccionrequest)
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
