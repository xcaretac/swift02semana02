//
//  ElegirIngredientes.swift
//  CreaTuPiza
//
//  Created by Xcaret A Ceniceros on 11/05/16.
//  Copyright © 2016 Xcaret Arellano Ceniceros. All rights reserved.
//

import UIKit

class ElegirIngredientes: UIViewController {
    
    @IBOutlet weak var lblingredientes: UILabel!
    var paso:String=""
    //Variables vistas anteriores
    var tamañoIngrediente:String?
    var masaIngrediente:String?
    var quesoIngrediente:String?
    //Variables esta vista
    var num:Int=0 //Contador
    var ingredientes:String?
    var ingredienteBoton:String? //Ingrediente elegido
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        lblingredientes.text=""
        num=0
        paso=""
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let vistaConfirmacion=segue.destinationViewController as! RevisarOrden
        vistaConfirmacion.tamañoConfirmacion=tamañoIngrediente!
        vistaConfirmacion.masaConfirmacion=masaIngrediente!
        vistaConfirmacion.quesoConfirmacion=quesoIngrediente!
        vistaConfirmacion.ingredientesConfirmacion=paso
    }
    
    func ingredientesElegidos(){
        if num<=5{
            paso = paso+"\n"+ingredienteBoton!
            lblingredientes.text=paso
        }else{
            lblingredientes.text="Máximo 5 Ingredientes"
            num=0
        }
        
    }
    
    @IBAction func cebolla(sender: AnyObject) {
        num++
        ingredienteBoton="Cebolla"
        ingredientesElegidos()
        
    }
    
    @IBAction func aceituna(sender: AnyObject) {
        num++
        ingredienteBoton="Aceituna"
        ingredientesElegidos()

        

    }
    
    @IBAction func Jamon(sender: AnyObject) {
        num++
        ingredienteBoton="Jamón"
        ingredientesElegidos()
    }

    @IBAction func anchoa(sender: AnyObject) {
        num++
        ingredienteBoton="Anchoa"
        ingredientesElegidos()
    }
    
    @IBAction func pimiento(sender: AnyObject) {
        num++
        ingredienteBoton="Pimiento"
        ingredientesElegidos()
    }
    
    @IBAction func peperoni(sender: AnyObject) {
        num++
        ingredienteBoton="Peperoni"
        ingredientesElegidos()
    }
    
    @IBAction func salchicha(sender: AnyObject) {
        num++
        ingredienteBoton="Salchicha"
        ingredientesElegidos()
    }
    
    @IBAction func Hongos(sender: AnyObject) {
        num++
        ingredienteBoton="Hongos"
        ingredientesElegidos()
    }
    
    @IBAction func pina(sender: AnyObject) {
        num++
        ingredienteBoton="Piña"
        ingredientesElegidos()
    }
    
    
    @IBAction func cambiarVista(sender: AnyObject) {


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
