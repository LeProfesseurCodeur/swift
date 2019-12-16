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

// 2e partie : constructeur avec player
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

// 3è partie : Héritage

class BestPlayer : Player {
    //propriété additionnel
    var memberLevel: String
    
    override init() {
        memberLevel = "Gold"
        super.init()
    }
    
    override init(name: String) {
        memberLevel = "Gold"
        super.init(name: name)
    }
    
    override func description() -> String {
        let originalMessage = super.description()
        return "\(originalMessage) et à le niveau \(memberLevel)"
    }
    
    //méthode additionelle
    func calculateBonus() {
        self.score += 1000
        "Le nouveau score est \(self.score)"
    }
}
var newPlayer = BestPlayer(name: "Manuel")
newPlayer.description()
newPlayer.calculateBonus()

// 4e partie : Propriétés calculées

import Foundation

class Person {
    //propriété stockées
    var firstName : String
    var lastName : String
    
    //Propriété calculée
    var fullName : String {
        return firstName + " " + lastName
    }
    
    init(first: String, last : String) {
        self.firstName = first
        self.lastName = last
    }
}

var examplePerson = Person(first: "Jen", last: "Barber")
examplePerson.firstName
examplePerson.lastName

// 5e partie : créer des propriétés et méthodes Type

class BankAccount {
    // propriété stockées
    let accountNumber : Int
    let routingCode = 12345678
    var balance : Double
    var interestRate : Float = 2.0
    
    init(num : Int, initialBalance : Double) {
        self.accountNumber = num
        self.balance = initialBalance
    }
    
    func deposit(amount : Double) {
        balance += amount
    }
    
    func withdraw(amount : Double) -> Bool {
        if balance > amount {
            balance -= amount
            return true
        } else {
            "Fonds non suffisants"
            return false
        }
    }
    // etc..
}

var secondAccount = BankAccount(num: 22113322, initialBalance: 4543.54)
