import Foundation

// Die Funktionsdefinition mit einem String-Array als Parameter
func concatStringsWithBrackets
    (values:[String]) ->(text:String, counter:Int)
{
    var newString = ""
    var textCounter = 0
    
    for value in values
    {
        if !value.isEmpty
        {
            newString += "[\(value)]"
            textCounter += 1
        }
    }
    return (newString, textCounter)
}

// Ein Array aus Zeichenketten bilden...
let words = ["Der", "frühe", "Vogel", "fängt", "den", "Wurm"]
// ... und die Funktion aufrufen
let wordsConcat = concatStringsWithBrackets(values: words)

// Ausgabe der Tupel-Werte
print("Neuer Text: \(wordsConcat.text)")
print("Verkettete Texte: \(wordsConcat.counter)")

// Eine Überladung der Funktion, die eine
// beliebige Anzahl von String-Werte entgegennehmen kann
func concatStringsWithBrackets
    (values:String...) ->(text:String, counter:Int)
{
    var newString = ""
    var textCounter = 0
    
    for value in values
    {
        if !value.isEmpty
        {
            newString += "[\(value)]"
            textCounter += 1
        }
    }
    return (newString, textCounter)
}

let words1
= concatStringsWithBrackets(values: "Swift")
let words8 = concatStringsWithBrackets(values: "Auf", "einen",
    "trüben", "Morgen", "folgt", "ein", "heiterer", "Tag")


// Eine Funktion, die eine beliebige Anzahl von
// Double-Typen entgegennimmt
func average(values:Double...) -> Double
{
    var sum = 0.0
    var counter = 0.0
    for value in values
    {
        sum += value
        counter += 1
    }
    return sum / counter
}

var avg1 = average(values: 50.0)
var avg2 = average(values: 4.1, 5.2, 6.0, 7.0)
var avg3 = average(values: 5.5, 6.5, 7.8, 9.1)

