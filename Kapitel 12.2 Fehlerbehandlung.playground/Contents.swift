import Foundation

enum CalculationError : Error
{
    case DivideByZero
    case SomethingWrong
    case OtherError
}

func divide(divident:Int, divisor:Int) throws -> Int
{
    guard divisor > 0 else
    {
        throw CalculationError.DivideByZero
    }
    return divident / divisor
}

do
{
    var result = try divide(divident: 100, divisor: 5)
    result = try divide(divident: result, divisor: 4)
    result = try divide(divident: result, divisor: 0)
}
catch(CalculationError.DivideByZero)
{
    print("Es wurde versucht durch Null zu teilen")
}
catch(CalculationError.SomethingWrong)
{
    print("Etwas stimmt nicht")
}
catch
{
    print("Unbekannter Fehler")
}
