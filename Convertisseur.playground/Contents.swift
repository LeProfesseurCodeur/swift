import UIKit

var str = "Hello, playground"


//class Vehicule {
//    var couleur:UIColor
//    var nombreSieges:Int = 4
//    var nombrePortes:Int = 4
//
//    //Initialisation - qui sert à créer chaque nouvel objet de ce type Véhicule
//
//    init(couleur:UIColor) {
//        self.couleur = couleur
//    }
//}

class Player {
    //propriété
    var name = "Inconnu"
    var score = 0
    
    //méthode
    func description() -> String {
        return "Player \(name) à \(score) point(s)"
    }
    
    //initialisation par défaut avec la méthode init
    init() {
        name = "Dylan"
        score = 0
    }
    //Initialisation avec un init ayant des paramètres
    init(name:String) {
        self.name = name
        self.score = 0
    }
    //méthode de desinitialisation
    deinit {
        //code de nettoyage
        
    }
}

var joueur1 = Player()
joueur1.description()

//utiliser le constructeur avec un init personnalisé
var joueur2 = Player(name:"Alice")
joueur2.description()

