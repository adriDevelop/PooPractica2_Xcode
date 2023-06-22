//
//  ViewController.swift
//  PooPractica2
//
//  Created by Adrian Velasco Carrasco on 22/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    // Creamos una nueva persona con los distintos constructores.
    let persona1 = PersonaClase()
    
    let persona2 = PersonaClase(nombre: "Adrian", edad: 23, sexo: "H")
    
    let persona3 = PersonaClase(nombre: "Nuevo", edad: 22, sexo: "M", peso: 80.50, altura: 1.78)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Hacemos uso de nuestros métodos.
        print(persona3.calcularImc())
        print(persona3.esMayorDeEdad())
        persona3.generarDni()
        print(persona3.dni)
    }

    
}

