import Foundation

// Variablen und Konstanten
var variableValue = 3.1415
variableValue = 3.0

let constValue = 42
// Neue Zuweisung nicht möglich
// constValue = 50
// Fallunterscheidungen
var salary = 10000

if salary > 15000
{
    print("Zu viel")
}
else if salary < 10000
{
    print("Zu wenig")
}
else
{
    print("Ok")
}

var index = 4

switch index
{
case 1:
    print("Index ist 1")
case 2:
    print("Index ist 2")
case 3...5:
    print("Index liegt zwischen 3 und 5")
case 6:
    print("Index ist 6")
    fallthrough
default:
    print("Index liegt nicht zwischen 1 bis 5")
}

// In Swift 5 nicht mehr möglich
/*
for var index = 0; index <= 5; index++
{
    print(index) // Ausgabe von 0 bis 5
}
 */

for index in 0...5 // Closed Range
{
    print(index) // Ausgabe von 0 bis 5
}

for index in 0..<5 // Half-Open Range
{
    print(index) // Ausgabe von 0 bis 4
}

for index in (5...10).reversed()
{
    print(index) // Ausgabe von 10 bis 5
}

var access = 1
repeat
{
    print(access) // Ausgabe von 1 bis 9
    access += 1
}
while access < 10

// Ohne Parameter und ohne Rückgabewert
func doSomething()
{
    print("Hello World!")
}

doSomething()

// Mit einem Double als Parameter und einem Double
// als Rückgabewert
func doSomething(value:Double) -> Double
{
    return value * 2.0
}

var twice = doSomething(value: 4.5)

// Mit zwei benannten Parametern
// und einem Double als Rückgabewert
func doSomething(firstValue first:Double, secondValue second:Double) -> Double
{
    return first + second
}

var sum = doSomething(firstValue: 3.2, secondValue: 4.7)

// Array
var cities:[String] = ["Rom","Paris","Berlin"]
cities.append("London")

for city in cities
{
    print(city) // Ausgabe alle Städtenamen
}

var count = cities.count // Anzahl der Elemente

// Dictionary
var animals:[Int: String] = [11:"Hund", 22:"Katze", 33:"Maus"]
animals[22] = "Elefant" // Element ersetzten
animals[99] = "Huhn" // Element anfügen

print(animals[22]) // Ausgabe "Optional (Elefant)"
print(animals[99]) // Ausgabe "Optional (Huhn)"

animals[11] = nil // Element entfernen

// Zeichenketten
var firstName = "Mike"
var lastName = "Müller"
// String Interpolation
print("Meine Name ist \(firstName) \(lastName).")

// Zahlenwerte formatieren
var numeric = 3.34983632
var num = String(format:"%.2f", numeric) // Ausgabe 3.35

// Enumerationen
enum Color
{
    case Red
    case Green
    case Blue
}
var exterior:Color = Color.Green

// Klassen
class Person
{
    // Eigenschaften
    var firstName:String
    var lastName:String
    
    init()
    {
        // Eigenschaften initialisieren
        firstName = ""
        lastName = ""
    }
}

// Klasseninstanz erzeugen und
// Eigenschaften zuweisen
var pers = Person()
pers.firstName = "Mike"
pers.lastName = "Müller"


enum CalculationError : Error
{
    case DivideByZero
    case OtherError
}

func divide(dividend:Int, divisor:Int) throws -> Int
{
    guard divisor > 0 else
    {
        throw CalculationError.DivideByZero
    }
    return dividend / divisor
}

do
{
    var result = try divide(dividend: 100, divisor: 0)
}
catch(CalculationError.DivideByZero)
{
    print("Es wurde versucht durch null zu teilen")
}
catch
{
    print("Ein anderer Fehler ist aufgetreten")
}












