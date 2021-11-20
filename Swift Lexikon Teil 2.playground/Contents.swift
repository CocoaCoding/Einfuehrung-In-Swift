import Foundation
import PlaygroundSupport // Neu
PlaygroundPage.current.needsIndefiniteExecution = true // Neu

// -- Format Specifier

var value = 3.14159265
// Double als String mit zwei Nachkommastellen
var t2 = String(format: "%.2f", value)
// Double als String mit vier Nachkommastellen
var t4 = String(format: "%.4f", value)

var index = 100
// Int als String mit zusätzlichem Text
var i = String(format: "Der Wert ist: %i", index)

var a1 = 45.2354
var a2 = 67.8823
// Umwandlung mehrerer Werte
var z = String(
    format: "%.2f + %.2f ist %.2f.", a1, a2, a1+a2)

var firstName = "Lisa"
var lastName = "Lee"
var name = String(format: "%@ %@", firstName, lastName)

var byte = 255
// Umwandlung von 255 in "FF"
var bUppercase = String(format: "%X", byte)
// Umwandlung von 255 in "ff"
var bLowercase = String(format: "%x", byte)

// Umwandlung von true in "1"
var expression = true
//var e = String(format: "%@", expression) // Nicht mehr in Swift 5
let e = expression ? "1" : "0"

// - Funktionen

// Eine Funktion, die einen Parameter entgegennimmt,
// aber keinen Wert zurückgibt
func outputValue(value:Double)
{
    print("Der Wert ist: \(value)")
}

// Funktionsaufruf
outputValue(value: 67.42)

// Eine Funktion, die zwei Parameter entgegennimmt
// und einen Wert zurückgibt
func addValues(value1:Double, value2:Double) -> Double
{
    return value1 + value2
}

// Funktionsaufruf
var result = addValues(value1: 55.22, value2:99.11)

// Eine Funktion, die keine Parameter entgegennimmt
// und einen Tupel zurückgibt
func getDummyName() -> (firstname:String, lastName:String)
{
    return ("Max", "Müller")
}

// Funktionsaufruf und Ausgabe
var max = getDummyName()
print("\(max.firstname) \(max.lastName)")

// -- Grand Central Dispatch

// Warteschlange vom System anfordern
let dispatchQueue = DispatchQueue.global(qos: .background)

// Closure-Block der Warteschlange hinzufügen und ausführen
dispatchQueue.async
{
    var sum = 0.0;
    for index in 1..<1000
    {
        sum = sum + Double(index)
    }
   print("Die Summe ist: \(sum).")
}









