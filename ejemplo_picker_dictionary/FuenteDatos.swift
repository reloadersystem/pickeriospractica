//
//  FuenteDatos.swift
//  Ejemplo-Array-Dictionary
//
//  Created by Instructor Fredy Asencios on 8/8/19.
//  Copyright © 2019 AcademiaMoviles. All rights reserved.
//

import Foundation

class FuenteDatos {
    
    //clase estatica
    class func fuenteDatos()->[[String:String]]{
        let p1 = ["Knombre":"Perú","Kpresidente":"Vizcarra","Kpoblacion":"33 Millones"]
        let p2 = ["Knombre":"Chile","Kpresidente":"Piñera","Kpoblacion":"18 millones"]
        let p3 = ["Knombre":"Ecuador","Kpresidente":"Moreno","Kpoblacion":"16 millones"]
        let arrayPaises = [p1,p2,p3]
        return arrayPaises
    }
}
