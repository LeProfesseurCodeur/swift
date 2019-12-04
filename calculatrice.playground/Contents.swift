import UIKit

var str = "Hello, playground" //type inferance
str
var salutation:String // type annotation
salutation = "HI !"

/*
    TP = Calculatrice
    Définir deux variables des nombres
    1 - calculer avec les opérateurs : + - / *
    2 - imprimer chaque résultat avec print()
    3 - plus : calculer deux valeurs de type integer et double
 */

var nombre1 = 10;
var nombre2 = 20;

//additionner
print(nombre1 + nombre2);

//soustraction
print(nombre1 - nombre2);

//mulitplication
print(nombre1 * nombre2);

//division
print(nombre1 / nombre2);

var nombre3 = 10.5 //inféré comme un double
var nombre4 = 20 //inféré comme un integer

print(Int(nombre3) + nombre4)//addition
print(Int(nombre3) - nombre4)//soustraction
print(Int(nombre3) / nombre4)//division
print(Int(nombre3) * nombre4)//multiplication
