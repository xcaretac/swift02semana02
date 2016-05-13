//
//  RevisarOrden.swift
//  CreaTuPiza
//
//  Created by Xcaret A Ceniceros on 11/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import UIKit

class RevisarOrden: UIViewController {

    var tamañoConfirmacion:String?
    var masaConfirmacion:String?
    var quesoConfirmacion:String?
    var ingredientesConfirmacion:String?
    

    
    @IBOutlet weak var imagen: UIImageView!
    @IBOutlet weak var tituloUno: UILabel!
    @IBOutlet weak var tituloDos: UILabel!
    @IBOutlet weak var tamañoconf: UILabel!
    @IBOutlet weak var masaconf: UILabel!
    @IBOutlet weak var quesoconf: UILabel!
    @IBOutlet weak var ingredientesconf: UILabel!
    var numero:Int=0
    var ingredientesregreso:String=" "
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        imagen.hidden=true
        tituloUno.hidden=false
        tituloDos.hidden=false
        tamañoconf.text=tamañoConfirmacion
        masaconf.text=masaConfirmacion
        quesoconf.text=quesoConfirmacion
        ingredientesconf.text=ingredientesConfirmacion
      
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func Confirmar(sender: AnyObject) {
        if tamañoConfirmacion=="" || masaConfirmacion=="" || quesoConfirmacion=="" || ingredientesConfirmacion==""{
            if tamañoConfirmacion==""{
                tamañoconf.textColor=UIColor.redColor()
                tamañoconf.text="Debes Elegir Tamaño"
                
            }
            
            if masaConfirmacion==""{
                masaconf.textColor=UIColor.redColor()
                masaconf.text="Debes Elegir Masa"
            }
            if quesoConfirmacion==""{
                masaconf.textColor=UIColor.redColor()
                quesoconf.text="Debes Elegir Queso"
            }
            if ingredientesConfirmacion==""{
                ingredientesconf.textColor=UIColor.redColor()
                ingredientesconf.text="Debes elegir al menos un Ingrediente"
            }
        }else{
            tamañoconf.hidden=true
            masaconf.hidden=true
            quesoconf.hidden=true
            ingredientesconf.hidden=true
            tituloUno.text="Pizza Confirmada"
            tituloDos.hidden=true
            imagen.hidden=false
        
        }
        
        
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
