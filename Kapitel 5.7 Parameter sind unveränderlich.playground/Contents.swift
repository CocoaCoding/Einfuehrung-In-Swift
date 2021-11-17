import Foundation

var str = "Hello, playground"


// Diese Art von Zuweise funktioniert in Swift 5 nicht mehr
/*
func myFunction(var intValue:Int)
{
    intValue = 2015
}

var year = 2014
myFunction(var: year)

// year ist immer noch 2014 obwohl in der
// Funktion ein anderer Wert zugewiesen wird
print(year)
 */

func myInOutFunction( intValue:inout Int)
{
    intValue = 2015
}

var thisYear = 2014
myInOutFunction(intValue: &thisYear)

// thisYear enthält jetzt den Wert 2015
// Er wurde der Variablen in der Funktion zugewiesen
print(thisYear)
