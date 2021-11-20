import Foundation

func generate(numbersCount:Int) -> [Int]
{
    // Ein Dictionary mit einer ganzen Zahl
    // für den Wert und als Schlüssel
    var randomDict = Dictionary<Int, Int>()
    
    // Die Schleife läuft, solange die Anzahl der
    // Elemente im Dictionary kleiner als der Wert
    // des Parameters ist
    while (randomDict.count < numbersCount)
    {
        // Eine Zufallszahl erzeugen
        let number = Int(arc4random_uniform(49)+1)
        randomDict.updateValue(0, forKey: number)
    }
    
    // Ausgabe der Werte zur Kontrolle
    print(randomDict)
    
    var randomArray = [Int]()
    // Alle Keys im Dictionary durchlaufen
    for key in randomDict.keys
    {
        randomArray.append(key)
    }
    
    // Sortierte Kopie der Auflistung zurück geben
    return randomArray.sorted( by: {$0 < $1})
}

// Aufruf der Funktion
generate(numbersCount: 6)
