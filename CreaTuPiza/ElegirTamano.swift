//
//  ElegirTamano.swift
//  CreaTuPiza
//
//  Created by Xcaret A Ceniceros on 10/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import UIKit

class ElegirTamano: UIViewController {

    @IBOutlet weak var size: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let sigVista=segue.destinationViewController as! ElegirMasa
        sigVista.tamañoMasa=size.text!
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func small(sender: AnyObject) {
        size.text="Tamaño Small"
        
    }

    @IBAction func mediano(sender: AnyObject) {
        size.text="Tamaño Medium"
    }
    @IBAction func large(sender: AnyObject) {
        size.text="Tamaño Large"
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
