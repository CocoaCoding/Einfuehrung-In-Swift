import Foundation

// -- Schleifen

// for-in-Schleife
// Die Zahlen 0 bis 5 werden ausgegeben
for index in 1...5
{
    print(index)
}

// for-in-Schleife
// Die Städtenamen werden ausgegeben
var cities = ["New York", "Rio", "Tokio"]
for city in cities
{
    print(city)
}

var counter = 10
// repeat-while-Schleife
// Die Zahlen 10 bis 1 werden ausgegeben
repeat
{
    print(counter)
    counter -= 1
}
    while counter > 0

var position = 0
// while-Schleife
// Keine Ausgabe, denn die Abbruchbedingung
// ist bereits erfüllt
while counter > 0
{
    print(counter)
    counter -= 1
}

//-- String-Dependency
var city = "london"

// Keine Übereinstimmung!
if city == "London"
{
    print("Wir fahren nach London.")
}

//-- String-Interpolation

// Zeichenketten werden per String-Interpolation verkettet
var vehicle = "Auto"
var destination = "Berlin"
var text = "Wir fahren mit dem \(vehicle) nach \(destination)."

// String-Interpolation mit einer Berechnung
var x1 = 45
var x2 = 54
print("Die Summe von \(x1) und \(x2) ist \(x1+x2).")

// -- Subscripting
// Zugriff auf die Zeichenkette "Paris", dem
// dritten String im Array
var europeanCities = ["London","Berlin","Paris","Wien"]
var hometown = europeanCities[2]

//-- Type-Inference
// Typ wird als Int erkannt
var itemsCount = 99
// Typ wird als Double erkannt
var taxtRate = 7.5
// Typ wird als Zeichenkette (String) erkannt
var customerName = "Sabine Schuster"

//-- Überladung
// Zwei Methoden des Namens addValue
// Der Rückgabetyp beider Methoden ist ein Double

// Methode nimmt zwei Double-Werte entgegen
func addValues(value1:Double, value2:Double) -> Double
{
    return value1 + value2
}

// Methode nimmt zwei Int-Werte entgegen
func addValues(value1:Int, value2:Int) -> Double
{
    return Double(value1 + value2)
}

let const1 = addValues(value1: 20, value2:30)
let const2 = addValues(value1: 20.5, value2:30.1)






