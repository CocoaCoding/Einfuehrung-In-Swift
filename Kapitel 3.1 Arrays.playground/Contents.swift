import Foundation

var city1 = "Hamburg"
var city2 = "Dortmund"

// Ein Array aus festen Werten, einer Variablen
// und einer Konstanten.
var cities = ["Berlin","Düsseldorf","Frankfurt","München","Kiel", city1,city2]

// Ausgabe der Stadt an der Postion 5 im Array
// Zugriff auf ein Element der Liste mit Subscripting
print("Meine Stadt ist \(cities[5]).")


// Weitere Städte dem Array hinzufügen
cities.append("Bonn")
cities += ["Köln"]
cities += ["Rostock", "Aachen"]

// Eine weitere Stadt an Position 2 einfügen
cities.insert("Ulm", at: 2)

// Ein Element im Array ersetzen
cities[1] = "Leipzig"
var count1 = cities.count

// Zwei Elemente im Array durch ein neues Element ersetzen
cities[2...3] = ["Oberhausen"]
var count2 = cities.count

// Funktioniert nicht
// cities.insert("Celle", at: 20)

// Ein leeres Array für den Typ Int anlegen
var numbers = [Int]()
// Objekte anhängen
numbers.append(12)
numbers.append(13)

// Ein neues Array auf der Basis eines existierenden Arrays
var moreNumbers = [Int](numbers)
moreNumbers.append(14)
moreNumbers.append(15)

// Ein Array aus verschiedenen Datentypen
var mixedArray:[Any] = [1,2,3.77,"Hallo","Swift"]
print(mixedArray[2])
print(mixedArray[3])

// Das Array sortieren
cities.sort (by: {$0.caseInsensitiveCompare($1) == ComparisonResult.orderedAscending })
// Das sortierte Array ausgeben
print(cities)

var sortedCities = cities.sorted (by: {$0.caseInsensitiveCompare($1) == ComparisonResult.orderedAscending })

print(sortedCities)

// Ein Array aus Int-Typen sortieren
var numbersArray:[Int] = [77,4,7,1,100,56,23,89,48]
numbersArray.sorted (by: {$0 < $1})
print(numbersArray)

var filteredNumbers = numbersArray.filter({ $0 > 50})
print(filteredNumbers)


// Alle Städte ermitteln die mit n enden
var filteredCities = cities.filter({ $0.last == "n" })
print(filteredCities)


// Das Objekt an Position 1 aus dem Array entfernen
 // cities.remove(at: 1)
// Das letzte Objekt aus dem Array entfernen
 // cities.removeLast()
// Das Array komplett leeren
 // cities.removeAll()

// Das Element "Köln" aus dem Array entfernen
cities = cities.filter({ $0 != "Köln" })
print(cities)

