import Foundation

var value1 = 10
var value2 = 20

var capture =
{
    () -> () in
    print("Aufruf im Closure:")
    print("value1 ist \(value1) und value2 ist \(value2).")
    value1 = 100
}

print("Vor dem Aufruf der Closure:")
print("value1 ist \(value1) und value2 ist \(value2).")

capture()

print("Nach dem Aufruf der Closure:")
print("value1 ist \(value1) und value2 ist \(value2).")

var captureCopy =
{
    (value1:inout Int, value2:Int) -> () in // In Swift 5 nur mit inout
    print("Aufruf im Closure:")
    print("value1 ist \(value1) und value2 ist \(value2).")
    value1 = 100
}

value1 = 22
value2 = 33

captureCopy(&value1, value2)

print("Nach dem Aufruf der Closure:")
print("value1 ist \(value1) und value2 ist \(value2).")
