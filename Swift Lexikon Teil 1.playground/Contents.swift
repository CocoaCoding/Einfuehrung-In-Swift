import Foundation

// Alias für einen (Double, Double) Tuple
typealias Coordinate = (x:Double, y:Double)

let pos1 = Coordinate(y: 44.4, x: 55.4)
let pos2 = Coordinate(x: 55.4, y: 44.4)

func addCoordinates(
    c1:Coordinate, c2:Coordinate) -> Coordinate
{
    return Coordinate(x: c1.x + c2.x, y: c1.y + c2.y)
}

let posSum = addCoordinates(c1: pos1, c2: pos2)

// -- Any Object
// Zuweisung einer Zeichenkette
var value:Any = "Köln"
// Zuweisung eines anderen Wert und Typ
value = 123345

// -- Array
// Ein Array aus ganzen Zahlen
var numbers = [1, 5, 7 ,9 ,12 ,13, 20]
var number = numbers[2]

// Ein Array aus Zeichenketten
var names = ["Petra", "Michael", "Andreas", "Marika"]
var name = names[2]

// Ein Array aus unterschiedlichen Typen
var any:Any = ["Rom", "Paris", 10, 20, 4.5, 5.6]

var cities = [String]()
// Einzelne Elemente anhängen
cities.append("Rom")
cities += ["Athen"]
// Ein Array anhängen
cities += ["London", "Berlin"]
// Ein neues Element an Position 0 einfügen
cities.insert("Tokyo", at: 0)

// Element an Position 0 entfernen
cities.remove(at: 0)
// Elemente an den Positionen 1 bis 2 entfernen
cities.removeSubrange(1...2)
// Alle Elemente entfernen
cities.removeAll(keepingCapacity: true)

// -- Dictionary
// Definition eines Dictionary
// Schlüssel und Wert verwenden den Typ String
var colors
= ["RED":"Rot", "BLUE": "Blau", "GREEN":"Grün"]
var myColor = colors["RED"]

// Definition eines Dictionary mit einem String
// für die Schlüssel und ganzen Zahlen als Werte
var values = ["First":1, "Last":100, "Default":50]
var myValue = values["Default"]

// Definition eines Dictionary mit einem String
// für die Schlüssel und ganzen Zahlen als Werte
var numericNames = [String:Int]()
// Zusätzliche Wertepaare hinzufügen
numericNames.updateValue(1, forKey: "eins")
numericNames.updateValue(2, forKey: "zwei")
numericNames.updateValue(10, forKey: "zehn")

numericNames.removeValue(forKey: "eins")
numericNames.removeAll(keepingCapacity: true)

// do-catch-Struktur
enum CalculationError : Error
{
    case DivideByZero
    case SomethingWrong
    case OtherError
}

func divide(divident:Int, divisor:Int) throws -> Int
{
    guard divisor > 0 else
    {
        throw CalculationError.DivideByZero
    }
    return divident / divisor
}

do
{
    var result = try divide(divident: 100, divisor: 0)
}
catch(CalculationError.DivideByZero)
{
    print("Es wurde versucht durch Null zu teilen")
}
catch
{
    print("Ein anderer Fehler ist aufgetreten")
}

// -- Enumeration
// Definition einer Enumeration
enum Cities
{
    case Berlin
    case London
    case Paris
    case Wien
}

// Zuweisung eines Wertes
// aus einer Enumeration
var hometown = Cities.Berlin

// Fallunterscheidung mit einem
// Wert aus einer Enumeration
if hometown == Cities.Berlin
{
    print("Wir fahren nach Berlin")
}

// --Fallunterscheidungen
var value1 = 50
var value2 = 49

if value1 > value2
{
    print("value1 ist größer als value2.")
}
else if value1 < value2
{
    print("value1 ist keiner als value2.")
}
else
{
    print("value1 und value2 sind gleich groß.")
}

var itemValue = 101

switch itemValue
{
case 50:
    print("Der Wert ist 50.")
    break
    
case 100:
    print("Der Wert ist 100.")
    break
    
case 101...1000:
    print("Der Wert liegt zwischen 101 und 1000.")
    fallthrough
    
default:
    break
}

enum Gender
{
    case Male
    case Female
}

var girl = Gender.Female

switch girl
{
case .Female:
    print("Mädchen")
    
case .Male:
    print("Junge")
}

