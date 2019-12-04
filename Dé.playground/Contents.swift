import UIKit

var str = "Hello, playground"

/*
 TP = Jeter les dés
 1 - arc4random_uniform() => générer une valeur aléatoire pour sélectionner une face de dé
 2 - afficher le résultat du lanceur de dé
*/

let facesDes:[String] = ["⚀", "⚁", "⚂", "⚃", "⚄", "⚅"];

/*
    1 - génére la valeur
 */
let fourchette = facesDes.count
let fourchetteUInt32 = UInt32(fourchette)
let random = arc4random_uniform(fourchetteUInt32)
let index = Int(random)

let faceDe = facesDes[index]

// 2 - afficher le résultat
let faceDe2 = facesDes[Int(arc4random_uniform(UInt32(facesDes.count)))]
print(faceDe2)

