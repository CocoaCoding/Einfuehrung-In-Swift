import Foundation


// Ein Objekt der Klasse Person instanziieren
var pers = Person()

// Den Eigenschaften Werte zuweisen
pers.firstName = "Max"
pers.lastName = "Müller"
pers.age = 32

// Die Methode aufrufen und den Rückgabewert ausgeben
print(pers.getAllPropertiesAsString())

var petra
= Person(firstName: "Petra", lastName: "Meyer", age: 44)
print(petra.getAllPropertiesAsString())

var andy
= Person(firstName: "Andy", lastName: "Schmidt", age: 37)
print(andy.getAllPropertiesAsString())


var kevin
= Person(firstName: "Kevin", lastName: "Klein", age: "20")

if kevin != nil
{
    print(kevin!.getAllPropertiesAsString())
}

// Aufruf einer Factory-Methode
let person = Person.getDefaultInstance()
print(person.getAllPropertiesAsString())

let sarah
= Person(firstName: "Sarah", lastName: "Nowak", age: 24)

// Mit einer Factory-Methode ein
// Objekt mit den gleichen Werten anlegen
let sarah2 = Person.copyFrom(original: sarah)
print(sarah2.getAllPropertiesAsString())


var recCal = RecCalculator()
recCal.width = 10
recCal.length = 20

// Zugriff über die berechnete Eigenschaft
print("Die Fläche ist: \(recCal.area)")
// Aufruf einer Methode
print("Die Fläche ist: \(recCal.getArea())")
