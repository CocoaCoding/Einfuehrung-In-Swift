import Foundation

func divideValues(dividend:Double, divisor:Double) ->Double
{
    let quotient = dividend / divisor
    return quotient
}

// Die Funktion aufrufen, den Rückgabewert
// entgegennehmen ...
let result = divideValues(dividend: 22.40, divisor: 2.0)
// ... und ausgeben
print("Das Ergebnis ist \(result)")

func concatStringsWithBrackets(firstString:String, secondString:String, thirdString:String) ->(text:String, counter:Int)
{
    var newString = ""
    var textCounter = 0
    
    if !firstString.isEmpty
    {
        newString += "[\(firstString)]"
        textCounter += 1
    }
    
    if !secondString.isEmpty
    {
        newString += "[\(secondString)]"
        textCounter += 1
    }
    
    if !thirdString.isEmpty
    {
        newString += "[\(thirdString)]"
        textCounter += 1
    }
    
    return (newString, textCounter)
}

let firstConcat
= concatStringsWithBrackets(firstString: "Hallo",
    secondString: "Swift", thirdString: "Entwickler")

print("Neuer Text: \(firstConcat.text)")
print("Verkettete Texte: \(firstConcat.counter)")

let secondConcat
= concatStringsWithBrackets(firstString: "Guten",
    secondString: " Morgen", thirdString: "")
print("Neuer Text: \(secondConcat.0)")
print("Verkettete Texte: \(secondConcat.1)")
