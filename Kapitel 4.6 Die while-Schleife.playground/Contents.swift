import Foundation

// Eine einfache while-Schleife
var index = 0
while index < 10
{
    print("Der Wert von index ist: \(index)")
    index += 1
}

var cards = 0
var boxes = 0.0

// While Schleife mit zwei Abbruchbedingungen
while cards < 10 || boxes < 10
{
    print("Der Wert von cards ist: \(cards)")
    print("Der Wert von boxes ist: \(boxes)")
    cards += 1
    boxes += 0.5
}


cards = 100
boxes = 100.0

repeat
{
    print("Der Wert von cards ist: \(cards)")
    print("Der Wert von boxes ist: \(boxes)")
    cards += 1
    boxes += 0.5
} while cards < 10 || boxes < 10

