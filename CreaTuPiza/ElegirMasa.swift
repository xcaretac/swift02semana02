//
//  ElegirMasa.swift
//  CreaTuPiza
//
//  Created by Xcaret A Ceniceros on 10/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import UIKit

class ElegirMasa: UIViewController {

    var tamañoMasa:String?
    @IBOutlet weak var masa: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaQueso=segue.destinationViewController as! ElegirQueso
        vistaQueso.tamañoQueso=tamañoMasa!
        vistaQueso.masaQueso=masa.text!
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func mthin(sender: AnyObject) {
        masa.text="Masa Delgada"
    }

    @IBAction func mcrunch(sender: AnyObject) {
        masa.text="Masa Crujiente"
    }
    @IBAction func mthick(sender: AnyObject) {
        masa.text="Masa Gruesa"    
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
