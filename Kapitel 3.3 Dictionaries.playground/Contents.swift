import Foundation

// Definition eines Dictionarys mit Schlüssel und Werten
var people
= ["JS" : "John Smith", "MM" : "Max Müller" , "GS": "Georg Sontag"]
// Zugriff auf die Werte eines Dictionarys
let value1 = people["JS"]
if value1 != nil
{
    print(value1!)
}

let value2 = people["MM"]
if value2 != nil
{
    print(value2!)
}

// Erweitert das Dictionary um Sarah Wang
people.updateValue("Sarah Wang", forKey: "SW")
// Ersetzt Max Müller durch Moritz Müller
people.updateValue("Moritz Müller", forKey: "MM")

// Die Anzahl der Wertepaare ermitteln
var size = people.count

// Den Eintrag für Georg Sontag aus dem Dictionary entfernen
people.removeValue(forKey: "GS")

// Das Dictionary komplett leeren
people.removeAll()

var workers = [12 : "Jochen", 47 : "Lena" , 32: "Paul" , 99:"Holger"]
var worker = workers[47]

// Ein Dictionary mit dem Typ String für Schlüssel und Wert
var stringDict = Dictionary<String, String>()
stringDict.updateValue("Hallo Swift", forKey: "1")
var s = stringDict["1"]

// Ein Dictionary mit einem Double-Typen als Wert
var doubleDict = Dictionary<String, Double>()
doubleDict.updateValue(3.14156, forKey: "Pi")
var d = doubleDict["Pi"]


// Ein Dictionary mit verschiedenen Typen für den Wert
var anyDict = Dictionary<String, Any>()
anyDict.updateValue(300.00, forKey: "K1")
anyDict.updateValue("Hallo Swift", forKey: "K2")
anyDict.updateValue(1, forKey: "K3")

print(anyDict["K1"])
print(anyDict["K2"])
print(anyDict["K3"])
