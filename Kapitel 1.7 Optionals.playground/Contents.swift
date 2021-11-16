import Foundation

// Definition einer Variablen
var temperatur1:Double = 32.5

// Definition einer Variabl en als Optional
var temperatur2:Double? = 32.5
 
// Ausgabe der beiden Variablen
print(temperatur1)
print(temperatur2)

var temperatur:Double? = 18.2

if let temp = temperatur
{
    print(temp)
}
else
{
    print("Keine Messung")
}
