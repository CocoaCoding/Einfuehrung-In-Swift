import Foundation


// Ein Objekt der Klasse Person instanziieren
var pers = Person()

// Den Eigenschaften Werte zuweisen
pers.firstName = "Max"
pers.lastName = "Müller"
pers.age = 32

// Ausgabe der Werte
print("Mein Name ist \(pers.firstName) \(pers.lastName).")
print("Ich bin \(pers.age) Jahre alt.")
print("Ich bin \(pers.ageInDays) Tage alt.")

//pers.ageInDays = 1000

// Verkettung von Eigenschaften, um einen Zustand abzufragen
if(pers.firstName.isEmpty)
{
    print("Es wurde kein Vorname zugewiesen.")
}

// Eine Instanz der Klasse anlegen
var calc = Calculator()
calc.factor1 = 5.4
calc.factor2 = 2.6

// Ausgabe des Ergebnisses
print("Das Produkt ist: \(calc.product)")


// Ein Objekt der Klasse Person instanziieren
var heidi = Person()
heidi.firstName = "Heidi"
heidi.lastName = "Schubert"
heidi.age = 32

// Ein neuer Nachname
heidi.lastName = "Schulz"
