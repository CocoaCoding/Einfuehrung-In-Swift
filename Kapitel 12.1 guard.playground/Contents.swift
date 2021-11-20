import Foundation


func addDoubleValues(value1:Double?, value2:Double?) -> Double
{
    var result:Double = 0
    
    if value1 != nil && value2 != nil
    {
        result = value1! + value2!
    }
    
    return result
}

/*
func addDoubleValues(value1:Double?, value2:Double?) -> Double
{
    guard value1 != nil && value2 != nil else
    {
        print("Einer oder beide Parameter sind nil")
        return 0
    }
    
    return value1! + value2!
}
*/

/*
func addDoubleValues(value1:Double?, value2:Double?) -> Double
{
    guard let value1 = value1, let value2 = value2 else
    {
        print("Einer oder beide Parameter sind nil")
        return 0
    }
    
    return value1 + value2
}
*/

var v1:Double? = 5.5
var v2:Double?  // Keine Zuweisung, v2 ist nil
print(addDoubleValues(value1: v1, value2: v2))



// Ein Element im Array ist nil
var elements:[Int?] = [44,85,23,56,nil,27,73]
var elementSum = 0

// Die Summe der Werte berechnen
for element in elements
{
    guard element != nil else
    {
        continue
    }
    elementSum += element!
}

print(elementSum)
