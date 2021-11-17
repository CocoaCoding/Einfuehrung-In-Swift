import Foundation

// Funktionsdefinition
func addFunction(value1:Double, value2:Double) -> Double
{
    return value1 + value2
}

// Funktionsaufruf
var sum = addFunction(value1: 22.72, value2: 77.28)


// Funktionsdefinition
func halloFunction()
{
    print("Hallo Funktion!")
}


// Funktionsaufruf
//halloFunction()

// Definition eines Closure
// und Zuweisung zu einer Variablen
let myClosure:((Double, Double) -> Double) =
{
    (value1:Double, value2:Double) -> Double in
    return value1 + value2
}

let closureSum = myClosure(55.55, 33.44)
