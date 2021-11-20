import Foundation

// guard-Struktur
var items = [3, 8, 2, -1, 9, 5, -6, 0]
var sum = 0

for item in items
{
    guard item >= 0 else
    {
        // Nur positive Zahlen addieren
        continue
    }
    sum = sum + item
}

func addTwoValues(first:Int,second:Int) -> Int
{
    guard first >= 0 && second >= 0 else
    {
        // Nur positive Werte addieren!
        return 0
    }
    return first + second
}
// Ist ein Parameter eine negative Zahl
// ist der Rückgabewerte der Funktion immer 0
var sumValues = addTwoValues(first: -14, second: 5)

// -- Gültigkeitsbereiche
// Äußerer Gültigkeitsbereich
var value1 = 100
var value2 = 200
var value3 = 300

// if-Struktur mit einem eigenen Gültigkeitsbereich
if value1 == 100
{
    // value1 kann hier angesprochen werden
    value1 = 50
    
    // Neue Variable nur für inneren Gültigkeitsbereich
    var value4 = 400
    
    // Der Name value2 kann hier erneut verwendet werden
    // und erzeugt eine neue Variable nur
    // für inneren Gültigkeitsbereich
    var value2 = 20
}

// value1 ist hier 50
// value2 ist hier 200
// value3 ist hier 300
// value4 ist hier nicht bekannt

// -- Initializer
/*
public class Cube
{
    var length:Double
    var height:Double
    var width:Double
    
    // Der Initialiser setzt die Werte
    // der drei Eigenschaften
    init()
    {
        self.length = 0.0
        self.height = 0.0
        self.width = 0.0
    }
}
*/

public class Cube
{
    var length:Double
    var height:Double
    var width:Double
    
    // Der Convenience-Initializer benötigt
    // beim Aufruf keine Parameter, verweist
    // aber an den Designated-Initalizer
    convenience init()
    {
        self.init(length: 0.0,height: 0.0,width: 0.0)
    }
    
    // Der Designated-Initializer erwartet
    // beim Aufruf keine Parameter
    init(length:Double, height:Double, width:Double)
    {
        self.length = length
        self.height = height
        self.width = width
    }
}

// -- Konstanten
// Definition einer Konstanten
let city:String
// Der Erste Wert wird erst nach der Deklaration zugewiesen
city = "Köln"
// Eine erneute Zuweisung ist nicht möglich
// city = "Bonn"

// -- Konvertierung, explizit
// Int in Double umwandeln
// Nachkommastellen werden abgeschnitten
var dValue:Double = 55.44
var iValue:Int = Int(dValue)

// Int in Double umwandlen
var ixValue: Int = 777
var dxValue:Double = Double(ixValue)

// Int in String umwandeln
var intValue:Int = 9876
var intString:String = "\(intValue)"

// Double in String umwandeln
// Mit Angabe von zwei Nachkommastellen
var doubleValue = 98.7654
var doubleString = String(format:"%.2f", doubleValue)

// String in einen Int? umwandlen
var source:String = "1000"
var destination:Int? = Int(source)

// Double in einen String umwandeln
// Benötigt einen NSFormatter, um die Bedeutung von
// Punkt und Komma aus den Landeseinstellungen
// zu verwenden. Optionals sind erforderlich, weil
// Konvertierungen fehlschlagen können
var numericString = "120,345"
var formatter = NumberFormatter()
formatter.locale = Locale.current
var number:NSNumber? = formatter.number(from: numericString)
var numericDouble:Double? =  number?.doubleValue

//-- Optional-Binding
// Ein Double-Optional
var result:Double? = 99.9

// Der Optional wird in einen regulären Typ
// umgewandelt, wenn der Optional nicht nil ist
if let data = result
{
    // Die Konstante data ist nur im Gültigkeitsbereich
    // der if-Struktur bekannt
    print("Der Wert ist: \(data).")
}
else
{
    print("Der Optional enthält keinen Wert.")
}

// -- Range
var cities = ["London", "Paris", "Bern", "Rom", "Berlin"]

// Closed Range
// Enthält Bern, Rom und Berlin
var cities1 = cities[2...4]

// Half-Open Range
// Enthält Bern und Rom
var cities2 = cities[2..<4]

// Definition einer Half-Open Range
// als Konstante
let range = 2..<4

// Enthält Bern und Rom
var cities3 = cities[range]

// Half-Open Range
// Erzeugt den Werteberiech 1 bis 9
let numbers = 1..<10

// In der Schleife werden die Zahlen
// 1 bis 9 ausgegeben
for num in numbers
{
    print(num)
}

// In der Schleife werden die Zahlen
// 20 bis 30 ausgegeben
for index in 20...30
{
    print(index)
}






