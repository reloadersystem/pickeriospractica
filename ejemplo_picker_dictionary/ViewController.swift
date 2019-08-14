//
//  ViewController.swift
//  ejemplo_picker_dictionary
//
//  Created by academia moviles4 on 8/13/19.
//  Copyright © 2019 BMS INMOTICA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtSalida: UITextView!
    
    @IBOutlet weak var miPicker: UIPickerView!
    
    @IBOutlet weak var contenedorPicker: UIView!
    
    var arrayPaises = [[String:String]]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        miPicker.delegate = self
        miPicker.dataSource = self
        arrayPaises = FuenteDatos.fuenteDatos()
        
        print(arrayPaises)
        
        contenedorPicker.isHidden = true
        
    }
    
    
    @IBAction func seleccionandoOpcion(_ sender: Any) {
        
       let rowSelected = miPicker.selectedRow(inComponent: 0)
        let objPaisSelected = arrayPaises[rowSelected]
        print(objPaisSelected)
        
        let mensaje = "Pais: \(objPaisSelected["Knombre"]!) \n Presidente: \(objPaisSelected["Kpresidente"]!) \n poblacion:\(objPaisSelected["Kpoblacion"]!) "
        txtSalida.text = mensaje
        contenedorPicker.isHidden = true
        
    }
    
    @IBAction func presentandoPicker(_ sender: Any) {
        contenedorPicker.isHidden = false
    }
    
    
}

extension ViewController:UIPickerViewDataSource, UIPickerViewDelegate{
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayPaises.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        let nombrePais = arrayPaises[row]["Knombre"]
        return nombrePais
       
    }
    
}

