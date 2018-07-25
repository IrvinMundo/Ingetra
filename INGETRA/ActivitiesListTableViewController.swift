//
//  ActivitiesListTableViewController.swift
//  INGETRA
//
//  Created by Irvin Mundo on 02/06/17.
//  Copyright © 2017 MundoSystems. All rights reserved.
//

import UIKit

class ActivitiesListTableViewController: UITableViewController {
    let activities = ["Bathing","Getting Dressed","Mobility","Bathroom", "Hygene","Feeding","Orientation","Handling"]
    let descripciones = ["Recommended once every 48 hrs.","Change daily, preferably cotton fabric and underwear as needed" ,"Moving is essential for preventing complications.Transfer as much as possible. Get help if needed" ,"Be sure to know how to handle the pacient before aiding him. Get help if needed.", "Brushing teeth 3 times a day Washing hands constantly Change diappers as needed", "Feed slowly and stop if patient coughs while eating or drinking.Consider patient's preferences","Help your patient know who, where they are and the time. \nUse signs or anything needed","Disease will worsen and symptoms like the following may appear: \nWandering Aggresion Sexually inappropiate behaviour Sleep disturbance Refusing to take medication. \nThese are not a threat if they are unfrequent and do not pose harm/distress to anyone"]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        //paso 4 llenar el nuevo arreglo
        // nuevoArray=((JSONParseArray(datosJSON) as NSArray) as! [Any])
        //paso 9
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        //return datos.count
        
        //paso 5 remplazar el uso de datos por nuevoArray
        return (activities.count)
    }
    
    
   override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Actividades", for: indexPath)
        
        let titulo = activities[indexPath.row]
    
        cell.textLabel?.text=titulo
        
        return cell
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
  override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        let siguienteVista = segue.destination as! DetalleViewController
        let indice = self.tableView.indexPathForSelectedRow?.row
        //paso 7 remplazar el uso de datos por nuevoArray
        //objeto marca es un diccionario que contiene marca y agencias
        let titulo : String  = activities[indice!]
        let des : String = descripciones[indice!]
        siguienteVista.laactividad = titulo
        siguienteVista.eltexto = des
    }
    
    
}
