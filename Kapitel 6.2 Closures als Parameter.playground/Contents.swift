import Foundation

// Funktion um eines Liste von Zufallszahlen zu erzeugen
func createRandomNumbers(count:Int, action:(_ value:[Int]) ->() )
{
    var numbers = [Int]()
    
    // Zufallszahlen von 0 bis 199 generieren
    for _ in 0 ..< count {
        let number = Int(arc4random_uniform(200))
        numbers.append(number)
    }
    
    // Den Closure aufrufen
    action(numbers)
}

// Definition eines Closure der ein Integr-Array
// entgegennimmt und keinen Wert zurückgibt
var output =
{
    (values:[Int]) -> () in
    for value in values
    {
        print("Wert: \(value)")
    }
    
    print("Der erste Wert ist: \(values.first!)")
    print("Der letzte Wert ist: \(values.last!)")
}

// Funktion mit der Anzahl der Zufallszahlen
// und dem Closure als Parameter aufrufen
createRandomNumbers(count: 5, action: output)

// Aufruf als Inline-Closure
createRandomNumbers(count: 5)
{
        (values:[Int]) -> () in
        for value in values
        {
            print("Wert: \(value)")
        }
        print("Der erste Wert ist: \(values.first!)")
        print("Der letzte Wert ist: \(values.last!)")
}

// -----------------------------------------------------


// Definition eines Closures zu Ausgabe
var showFriends =
{
    (name:String) -> () in
    print("Hallo \(name)!")
}

var friends = ["Mike", "Marika", "Andreas", "Peter", "Sabine"]

// Alle Elemente aus dem Array ansprechen
// mit der map-Methode
friends.map(showFriends)

// Closure als Inline-Aufruf
friends.map({
    (name:String) -> () in
    print("Hallo \(name)")
})

// Inline-Closure Version 2
friends.map({ print("Hallo \($0)!") })

// Inline-Closure Version 3
friends.map(){ print("Hallo \($0)!") }

// Inline-Closure Version 4
friends.map{ print("Hallo \($0)!") }
