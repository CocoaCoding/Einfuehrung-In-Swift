import Foundation

var name = "Martina"
var result = ""

if name.hasSuffix("tina")
{
    result = "Der Name endet mit 'tina'."
}
else
{
    result = "Der Name endet nicht mit 'tina'."
}

print(result)


var prefix = "chr"
name = "Christina"

if name.lowercased().hasPrefix(prefix.lowercased())
{
    result = "Der Name beginnt mit '\(prefix)'."
}
else
{
    result = "Der Name beginnt nicht mit '\(prefix)'."
}

print(result)




var firstValue = 60
var secondValue = 50
var compared = ""

if firstValue > secondValue
{
    compared = "Der Wert von firstValue ist größer als der Wert von secondValue."
}
if  secondValue > firstValue
{
    compared = "Der Wert von secondValue ist größer als der Wert von firstValue."
}
if  firstValue == secondValue
{
    compared = "Die Werte von secondValue und firstValue sind gleich groß."
}

print(compared)

if firstValue > secondValue
{
    compared = "Der Wert von firstValue ist größer als der Wert von secondValue."
}
else if  secondValue > firstValue
{
    compared = "Der Wert von secondValue ist größer als der Wert von firstValue."
}
else
{
    compared = "Die Werte von secondValue und firstValue sind gleich groß."
}

print(compared)

if true
{
    result = "Diese Zuweisung wird immer augeführt"
}

if false
{
    result = "Diese Zuweisung wird niemals augeführt"
}


var itemsCount = 75
var countResult = ""

if itemsCount > 60 && itemsCount < 80
{
    countResult = "Der Wert von itemsCount ist größer als 60"
    countResult += " und kleiner als 80."
}

print(countResult)

// Eine if-Struktur mit einer ODER-Verknüpfung
if itemsCount > 60 || itemsCount == 40
{
    countResult = "Der Wert von itemsCount ist größer als 60"
    countResult += " oder genau 40."
}

print(countResult)


var numbers:ClosedRange = 1...100
var number = 90

// Pattern-Match-Operator
if numbers ~= number
{
    print("\(number) ist im Interval enthalten.")
}
else
{
    print("\(number) ist im Interval nicht enthalten.")
}

var rating = 54
var ratingText = ""

if rating > 50 && rating != 55
{
    ratingText = "Der Wert von rating ist größer als oder gleich"
    ratingText += " 50 aber nicht 55."
}

print(ratingText)






