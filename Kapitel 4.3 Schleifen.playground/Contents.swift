import Foundation

// Eine einfache for-Schleife
// für zehn Wiederholungen mit einer
// Closed Range
for index in 1...10
{
   print("Der Wert von index ist \(index).")
}

// Diese Schleife verwendet eine Half-Open
// Range. Nur die Werte von 1 bis 9 werden
// durchlaufen.
for index in 1..<10
{
    print("Der Wert von index ist \(index).")
}

// Den Wertebereich von 1 bis 10
// in Schritte zu 0.5 durchlaufen
for index in stride(from: 1, to: 10.5, by: 0.5)
{
   print("Der Wert von index ist \(index).")
}


// Eine Variablem zum Zählen der Durchläufe
var loopCounter:Int = 0

for _ in 1...10
{
    loopCounter += 1
    print("Durchlauf: \(loopCounter).")
}

print("Der Wert von loopCounter ist \(loopCounter).")


// Definition eines Bereiches vor der Schleife.
// Die Closed Range enthält die Werte
// 5, 6, 7, 8, 9 und 10
var start = 5
var ende = 10
var range = start...ende

for rangeIndex in range
{
    print("Der Wert von rangeIndex ist \(rangeIndex).")
}
