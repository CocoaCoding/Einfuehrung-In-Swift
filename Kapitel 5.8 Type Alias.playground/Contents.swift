import Foundation

typealias MeasuredValue = Float

let firstValue:MeasuredValue = 5.5
let secondValue:MeasuredValue = 10.4

let valueSum = firstValue + secondValue
var position = (100.20, 87.34)

typealias Coordinate = (x:Double, y:Double)
var pos = Coordinate(x:100.20, y:87.34)

func addCoordinates(c1:Coordinate, c2:Coordinate) -> Coordinate
{
    return Coordinate(x: c1.x + c2.x, y: c1.y + c2.y)
}

// Die Reihenfolge der Parameter sollte man in Swift 5 nicht mehr ändern
// Das gibt eine Warnung!
let posYFirst = Coordinate(y: 44.4, x: 55.4)
let posXFirst = Coordinate(x: 55.4, y: 44.4)
let sum = addCoordinates(c1: posXFirst, c2: posYFirst)

/*
func addCoordinates(c1: (x:Double, y:Double),
    c2: (x:Double, y:Double))
    -> (x:Double, y:Double)
{
    return (x: c1.x + c2.x, y: c1.y + c2.y)
}

let posYFirst = (y: 44.4, x: 55.4)
let posXFirst = (x: 55.4, y: 44.4)
let sum = addCoordinates(posXFirst, c2: posYFirst)
*/
