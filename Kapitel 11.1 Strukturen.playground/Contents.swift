import Foundation

public struct Coordinate
{
    public var xValue:Double
    public var yValue:Double
    
    init()
    {
        self.init(x: 0.0,y: 0.0)
    }
    
    init(x:Double, y:Double)
    {
        self.xValue = x
        self.yValue = y
    }
}

// Funktion zu Ausgabe der Koordinatenwerte
public func coordinateOutput(coord: inout Coordinate)
{
    coord.yValue += 1.0
    coord.xValue += 1.3
    
    print("X-Wert: \(coord.xValue)")
    print("Y-Wert: \(coord.yValue)")
}

// Coordinate-Struktur erstellen
var location = Coordinate(x: 5.2, y: 4.7)
// Aufruf der Funktion
coordinateOutput(coord: &location)
coordinateOutput(coord: &location)
coordinateOutput(coord: &location)

public class DemoClass
{
    public var text:String = ""
    
    init(txt:String)
    {
        self.text = txt
    }
}

var s1 = "Hallo Welt"
var s2 = s1
s1 = "Hallo Swift"
print("s1: \(s1) s2: \(s2)")

var c1 = DemoClass(txt:"Hallo Welt")
var c2 = c1
c1.text = "Hallo Swift"
print("c1: \(c1.text) c2: \(c2.text)")

public class DataClass
{
    public var value:String = ""
}

// Die Funktion setzt den Wert der
// Objektreferenz
public func setData(data:DataClass)
{
    data.value = "Hallo Swift"
}

// Instanz wird erzeugt
var demo = DataClass()
// Instanz wird an die Funktion übergeben
setData(data: demo)
// Wert wird ausgegeben
print(demo.value)

public struct DataStruct
{
    public var value:String = ""
}


// Die Funktion setzt den Wert der
// Kopie und gibt sie als Rückgabewert zurück
public func setData(data:DataStruct) -> DataStruct
{
    var data = data
    data.value = "Hallo Swift"
    return data
}

// Instanz wird erzeugt
var demoStruct = DataStruct()
// Instanz wird an die Funktion übergeben
// und der Rückgabewert neu zugewiesen
demoStruct = setData(data: demoStruct)
// Wert wird ausgegeben
print(demoStruct.value)












