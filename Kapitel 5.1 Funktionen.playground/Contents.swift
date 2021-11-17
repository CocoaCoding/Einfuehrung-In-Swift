import Foundation

// Definition der Funktion addValues
func addValues(firstValue:Double, secondValue:Double)
{
    let result = firstValue + secondValue
    print("Das Ergebnis ist \(result).")
}

// Aufruf der Funktion addValues
addValues(firstValue: 23.83, secondValue: 87.12)

// Definition der Funktion addValues
// mit dem Typen Int für die Parameter
func addValues(firstValue:Int, secondValue:Int)
{
    let result = firstValue + secondValue
    print("Das Ergebnis ist \(result).")
}

// Aufruf der Funktion addValues
// mit ganzen Zahlen
addValues(firstValue: 23, secondValue: 87)
addValues(firstValue: 22.88, secondValue: 30.99)
addValues(firstValue: 70.11, secondValue: 20.13)


// Defintion einer Funktion mit benannten Parametern
func divideValues(dividend firstValue:Double, divisor secondValue:Double)
{
    let result = firstValue / secondValue
    print("Das Ergebnis ist \(result).")
}

// In Swift 5 muss die Methode einen anderen Namen haben
// Wenn die Parametertypen und der Rückgabetyp identisch ist

func divideValues_2(dividend:Double, divisor:Double)
{
    let result = dividend / divisor
    print("Das Ergebnis ist \(result).")
}

// Aufruf einer Funktion mit benannten Parametern
divideValues_2(dividend: 15.3, divisor: 5.1)
