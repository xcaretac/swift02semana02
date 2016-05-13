//
//  ElegirQueso.swift
//  CreaTuPiza
//
//  Created by Xcaret A Ceniceros on 10/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import UIKit

class ElegirQueso: UIViewController {
    
    var tamañoQueso:String?
    var masaQueso:String?
    
    @IBOutlet weak var queso: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaIngrediente=segue.destinationViewController as! ElegirIngredientes
        vistaIngrediente.tamañoIngrediente=tamañoQueso
        vistaIngrediente.masaIngrediente=masaQueso
        vistaIngrediente.quesoIngrediente=queso.text!
        
    }
    
    @IBAction func mozarella(sender: AnyObject) {
        queso.text="Queso Mozarrella"
    }

    @IBAction func cheddar(sender: AnyObject) {
        queso.text="Queso Cheddar"
    }
    
    @IBAction func parmesano(sender: AnyObject) {
        queso.text="Queso Parmesano"
    }
    
    @IBAction func sinqueso(sender: AnyObject) {
        queso.text="Sin Queso"
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
