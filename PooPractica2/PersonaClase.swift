//
//  PersonaClase.swift
//  PooPractica2
//
//  Created by Adrian Velasco Carrasco on 22/6/23.
//

import Foundation

/*
 
 Haz una clase llamada Persona que siga las siguientes condiciones:

     Sus atributos son: nombre, edad, DNI, sexo (H hombre, M mujer), peso y altura. No queremos que se accedan directamente a ellos. Piensa que modificador de acceso es el más adecuado, también su tipo. Si quieres añadir algún atributo puedes hacerlo.
     Por defecto, todos los atributos menos el DNI serán valores por defecto según su tipo (0 números, cadena vacía para String, etc.). Sexo sera hombre por defecto, usa una constante para ello.
     Se implantaran varios constructores:
         Un constructor por defecto.
         Un constructor con el nombre, edad y sexo, el resto por defecto.
         Un constructor con todos los atributos como parámetro.
 
 
 Los métodos que se implementaran son:

     calcularIMC():
 
    calculara si la persona esta en su peso ideal (peso en kg/(altura^2  en m)), si esta fórmula devuelve un valor menor que 20, la función devuelve un -1, si devuelve un número entre 20 y 25 (incluidos), significa que esta por debajo de su peso ideal la función devuelve un 0  y si devuelve un valor mayor que 25 significa que tiene sobrepeso, la función devuelve un 1. Te recomiendo que uses constantes para devolver estos valores.
 
 
         esMayorDeEdad(): indica si es mayor de edad, devuelve un booleano.
 
         comprobarSexo(char sexo): comprueba que el sexo introducido es correcto. Si no es correcto, sera H. No sera visible al exterior.
 
         toString(): devuelve toda la información del objeto.
 
         generaDNI(): genera un número aleatorio de 8 cifras, genera a partir de este su número su letra correspondiente. Este método sera invocado cuando se construya el objeto. Puedes dividir el método para que te sea más fácil. No será visible al exterior.
 
         Métodos set de cada parámetro, excepto de DNI.


 */

// Creamos nuestra clase
class PersonaClase{
    // Definimos los atributos de la clase.
    var nombre: String
    var edad: Int
    var dni: String?
    var sexo: Character
    var peso: Float
    var altura: Float
    
    // Generar los constructores.
    
    // Generar el constructor por defecto.
    init(){
        self.nombre = ""
        self.edad = 0
        self.sexo = "H"
        self.peso = 0.0
        self.altura = 0.0
    }
    
    // Generar el constructor con nombre, edad y sexo. Demas campos por defecto.
    init(nombre: String, edad: Int, sexo: Character){
        self.nombre = nombre
        self.edad = edad
        self.sexo = sexo
        peso = 0.0
        altura = 0.0
    }
    
    // Generamos el constructor con todos los atributos como parametro.
    init(nombre: String, edad: Int, dni: String? = nil , sexo: Character, peso: Float, altura: Float){
        self.nombre = nombre
        self.edad = edad
        self.sexo = sexo
        self.dni = dni
        self.peso = peso
        self.altura = altura
    }
    
    // Metodos de la clase.
    
    // Calcular IMC.
    func calcularImc()->String{
        // Funcion a calcular peso/altura al cuadrado.
        let resultado = self.peso/(self.altura*self.altura)
        var valor: Int = 0
        if resultado < 20.00 {
            valor = -1
        } else if resultado > 25.00{
            valor = 1
        }else {
            valor = 0
        }
        if valor == -1{
            return "Dentro de tu peso ideal."
        }
        else if valor == 1 {
            return "Tienes sobrepeso."
        }
        else {
            return "Por debajo de tu peso ideal."
        }
    }
    
    // Es mayor de edad.
    func esMayorDeEdad()->String{
        if self.edad >= 18 {
            return "Eres mayor de edad. Puedes ir a la carcel."
        } else {
            return "Eres menor de edad. Todavia no puedes ir a la carcel."
        }
    }
    
    // Comprobar que el sexo introducido es correcto.
    func esCorrectoSexo(sexo: Character){
        if sexo == "H" || sexo == "M" {
            self.sexo = sexo
        }
        else {
            self.sexo = "H"
        }
    }
    
    // Generar dni randomizado.
    func generarDni(){
        // Generamos un numero random con los 8 caracteres numericos de nuestro dni.
        let dni = Int.random(in: 10000000..<99999999)
        
        // Seleccionamos una letra del abecedario.
        let letras = Array("abcdefghijklmnopqrstuvwxyz") // Array con cada letra del abecedario.
        let lugarLetra = Int.random(in: 0..<letras.count) // Cogiendo un lugar del array de letras aleatorio.
        let letraGenerada = letras[lugarLetra] // Seleccionamos la letra que tenemos dentro de nuestro array.
        
        // Convertimos el numero en String.
        let conversionNumero = String(dni)
        // Obtener el dni.
        let dniGenerado = "\(conversionNumero)\(letraGenerada)"
        
        // Añadimos el dni generado a nuestro usuario.
        self.dni = dniGenerado
        
    }
}
