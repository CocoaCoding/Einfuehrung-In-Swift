import Foundation

// Definition einer Zeichenkette in Swift
// Der Datentyp müsste hier nicht angegeben werden
var text:String = "Hallo, Welt!"

// So sah die Definition einer Zeichenkette
// in Objective-C aus
// NSString *text = @"Hallo Welt";

var value = "50"
var newValue = value + "50"

var firstName = "Georg"
var lastName = "Freitag"
var fullName = "Mein Name ist " + firstName + " " + lastName + "."

var interpolatedFullName
= "Mein Name ist \(firstName) \(lastName)."

var price = 1.339
var liter = 8.5
var total = "\(liter) Liter zu \(price) kosten \(price * liter) €"

var totalFormatted
= String(format: "%.2f Liter zu %.2f kosten %.2f €", liter, price, liter * price)

var personName = "Max Müller"
var age = 54
var description
= String(format: "Mein Name ist %@. Ich bin %i Jahre alt", personName, age)

// Enthält die Zeichenkette ein Zeichen?
var empty = fullName.isEmpty

// Wieviele Zeichen enthält der String?
var charCount = fullName.count


// Vergleich von Zeichenketten auf Gleichheit
var aFirstName = "Petra"
var aLastName = "Schubert"

if aFirstName + " " + aLastName == "Petra Schubert"
{
    print("Die Zeichenketten sind gleich")
}
    else
{
    print("Die Zeichenketten sind ungleich")
}


var value1 = "Dortmund"
var value2 = "Bochum"

// Vergleiche von city1 und city2 unter Verwendung der
// Option caseInsensitive, um die Groß - und
// Kleinschreibung zu irgnorieren
var comparisonResult:ComparisonResult
= value1.compare(value2, options: NSString.CompareOptions.caseInsensitive)

if comparisonResult == ComparisonResult.orderedSame
{
    print("Die Zeichenketten sind gleich")
}
    else if comparisonResult == ComparisonResult.orderedAscending
{
    print("\(value1) kommt vor \(value2).")
}
    else if comparisonResult == ComparisonResult.orderedDescending
{
    print("\(value2) kommt vor \(value1).")
}


var city1 = "Frankfurt"
var city2 = "frankFurt"

var city1Upper = city1.uppercased()
var city2Upper = city2.uppercased();

if city1Upper == city2Upper
{
    print("Die Zeichenketten sind gleich")
}
else
{
    print("Die Zeichenketten sind unterschiedlich")
}

var city = "Hamburg"
var search = "burg"

if city.range(of: search) != nil
{
    print("Die gesuchte Zeichenfolge ist enthalten")
}

var range = city.range(of: search, options: NSString.CompareOptions.caseInsensitive)

if let validRange = range
{
    print("Startindex: \(validRange.lowerBound)")
    print("Endindex: \(validRange.upperBound)")
}
else
{
    print("Die gesuchte Zeichenfolge ist nicht enthalten")
}


// Den Begriff Objective-C in der Zeichenkette durch
// das Wort Swift ersetzen
var greetings
= "Hallo Objective-C-Entwickler!"

greetings = greetings.replacingOccurrences(of: "Objective-C", with: "Swift")

// Bei der Textersetzung die Groß- und Kleinschreibung
// im Text ignorieren
greetings = greetings.replacingOccurrences(of: "hallo", with: "Guten Tag", options: NSString.CompareOptions.caseInsensitive)

// Sämtliche Whitespaces aus einem String entfernen
var whitespaceString = "   Mein Name is Andreas  "
var normalString = whitespaceString.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines)

// Alle Buchstaben aus einem String entfernen
var whitespaceAmount = "Der Rechnungsbetrag ist: 199,44"
var normalAmount = whitespaceAmount.trimmingCharacters(in: CharacterSet.decimalDigits.inverted)

// Eine Zeichenkette in eine Zahl umwandeln
var numericStringValue = "223"
var numericIntValue:Int? = Int(numericStringValue)

// Der urspüngliche Werte als Zeichenkette
var numberValue:String = "120,3456"

// Einen NSNumberFormatter erzeugen
var formatter = NumberFormatter()
formatter.locale = Locale(identifier: "de_DE")

// Die aktuellen Einstellungen für die Region
// des Betriebssystems für eine Umwandlung verwenden
formatter.locale = Locale.current

// Minmal und maximal zwei Nachkommastellen
formatter.minimumFractionDigits = 2
formatter.maximumFractionDigits = 2

// Ein NSNumber-Typ als Optional denn die
// umwandlung kann fehlschlagen.
// Die explizite Angabe des Typen ist nicht zwingend weil
// numberFromString immer einen Optional zurück gibt
var number:NSNumber? = formatter.number(from: numberValue)

if let validNumber = number
{
    var newNumberValue = formatter.string(from: validNumber)
}




