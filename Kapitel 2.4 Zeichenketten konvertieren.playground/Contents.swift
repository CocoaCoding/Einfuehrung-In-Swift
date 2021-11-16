import Foundation

// Eine Zeichenkette in eine ganze Zahl umwandeln
var numericStringValue = "233"
var numericIntValue = Int(numericStringValue)

// Der ursprüngliche Wert als Zeichenkette
var numberValue:String = "120,3456"

// Einen NSNumberFormatter erzeugen
var formatter = NumberFormatter()
formatter.locale = Locale(identifier: "de_DE")

// formatter.locale = Locale.current

// Minimal und maximal zwei Nachkommastellen
formatter.minimumFractionDigits = 2
formatter.maximumFractionDigits = 2

// Ein NSNumber-Typ als Optional denn die
// Umwandlung kann fehlschlagen

// Die explizite Angabe des Typen ist nicht zwingend,
// weil numberFromSring immer einen Optional zurückgibt

var number:NSNumber?
= formatter.number(from: numberValue)

if let validNumber = number
{
    let newNumberValue =
    formatter.string(from: validNumber)
    print("\(newNumberValue!)")
}
