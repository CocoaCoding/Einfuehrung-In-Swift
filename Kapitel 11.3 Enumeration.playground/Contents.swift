import Foundation


var color = "RedColor"

if color == "BlueColor"
{
    print("Blaue Farbe wird verwendet.")
}
else if color == "RedColor"
{
    print("Rote Farbe wird verwendet.")
}
else if color == "BlackColor"
{
    print("Schwarze Farbe wird verwendet.")
}

public enum Color
{
    case Blue
    case Red
    case Black
    
    init()
    {
        self = .Red
    }
    
    // Init-Methode erwartet eine Zeichenkette
    // als Parameter
    init(stringValue:String)
    {
        if stringValue == "BlueColor"
        {
            self = .Blue
        }
        else if stringValue == "RedColor"
        {
            self = .Red
        }
        else
        {
            self = .Black
        }
    }
    
    // Funktion liefert zum Enum-Wert eine
    // passende Zeichenkette
    public func getEnumValueAsString() -> String
    {
        switch self
        {
        case .Blue:
            return "BlueColor"
        case .Red:
            return "RedColor"
        default:
            return "BlackColor"
        }
    }
}

// Zuweisung eines Wertes aus einem Enum
let enumColor = Color.Red

if enumColor == Color.Blue
{
    print("Blaue Farbe wird verwendet.")
}
else if enumColor == Color.Red
{
    print("Rote Farbe wird verwendet.")
}
else if enumColor == Color.Black
{
    print("Schwarze Farbe wird verwendet.")
}

public enum Direction
{
    case Up
    case Down
    case Left
    case Right
}

// Die Zuweisung ist nicht erlaubt, denn
// Enumerationen sind typensicher
// var movement:Direction = Color.Red

// Vergleiche von Emum-Werten und Zahlen
// sind in Swift nicht zulässig
// if movement == 0
// {
// }

let backColor:Color = .Red

switch backColor
{
case .Blue:
    print("Blaue Farbe wird verwendet.")
case .Red:
    print("Rote Farbe wird verwendet.")
case .Black:
    print("Schwarze Farbe wird verwendet.")
}

// Ein neue Color-Enum mit dem
// Startwert, der in der init-Methode gesetzt wird
var favoriteColor = Color()

let carColor = Color(stringValue: "BlueColor")
if carColor == .Blue
{
    print(carColor.getEnumValueAsString())
}

