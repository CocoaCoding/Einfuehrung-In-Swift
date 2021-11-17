import Foundation

var friends = ["Mike","Marika","Andreas","Peter","Sabine"]
// Closure als Inline-Aufruf
friends.map(){print("Hallo \($0)!")}

// Ein Array aus ganzen Zahlen anlegen
var numbers = [99, 23, 64, 12, 47, 62, 77]
// Die Zahlen sortieren
numbers.sort{$0 < $1}
// Das sortierte Array ausgeben
print(numbers)

var sortAscending =
{
    (value1:Int , value2:Int) -> Bool in
    if value1 < value2
    {
        print("Werte sind richtig sortiert.")
        return true
    }
    print("Werte sind falsch sortiert.")
    return false
}

// Die Zahlen sortieren
numbers.sort(by: sortAscending)


var sortDifferent =
{
    (value1:Int , value2:Int) -> Bool in
    
    if value1 < 50
    {
        if value1 < value2
        {
            return true
        }
        return false
    }
    
    if value1 > value2
    {
        return true
    }
    return false
}

// Ein Array aus ganzen Zahlen anlegen
var differentNumbers = [99,23,64,12,47,62,77,50,35,68]

// Die Zahlen sortieren
differentNumbers.sort(by: sortDifferent)


differentNumbers.sort
{
        if $0 < 50
        {
            if $0 < $1
            {
                return true
            }
            return false
        }
        
        if $0 > $1
        {
            return true
        }
        return false
}


// Der Vergleich von zwei Zahlen
// liefert einen booleschen Wert
 var boolResult = 5 < 6

// Schreibt true in die Resuls Area
5 < 6

// Schreibt false in die Resuls Area
5 > 6

