import Foundation

// Verschachtelte for-Schleife mit einer if-Struktur
// 333 Kartons müssen verschifft werden

var totalBoxes = 333
var totalContainer = 4
var containerCounter = 1
var boxesCounter = 1


for index in 1...totalBoxes
{
    print("Karton \(index) wird in Container geladen")
    
    if index % 25 == 0
    {
        print("Der Container ist voll.")
        print("Verwende neuen Container")
        containerCounter += 1
    }
}

var message = "\(totalBoxes) Kartons benötigen "
message += "\(containerCounter) Container"
print(message)

// Werte zurücksetzen
totalBoxes = 333
totalContainer = 4
containerCounter = 1
boxesCounter = 1

for index in 1...totalBoxes
{
    print("Karton \(index) wird in Container geladen")
    
    if index % 25 == 0
    {
        if containerCounter < totalContainer
        {
            print("Der Container ist voll.")
            print("Verwende neuen Container.")
            containerCounter += 1
        }
        else
        {
            print("Keine leeren Container verfügbar.")
            print("Der Vorgang wird abgebrochen.")
            // Die Schleife abbrechen
            break;
        }
    }
    boxesCounter += 1
}

var message2 = "\(boxesCounter) Kartons verladen "
message2 += "in \(containerCounter) Container"
print(message2)



var days = ["Sonntag", "Montag", "Dienstag",
    "Mittwoch", "Donnerstag", "Freitag", "Samstag"]

for day in days
{
    if day == "Sonntag" || day == "Samstag"
    {
        // Weitere Verarbeitung in der Schleife überspringen
        continue
    }
    print("Es ist \(day). Wir gehen zur Arbeit.")
}

