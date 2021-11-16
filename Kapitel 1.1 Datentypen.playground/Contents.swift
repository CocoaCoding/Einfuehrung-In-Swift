// Playground - noun: a place where people can play

import Foundation

var age:Int = 43
var taxtRate:Double = 9.5

// Der größte Int-Wert
print(Int.max)
 // Der kleinste Int-Wert
print(Int.min)
// Der größte Double-Wert
print(Double.greatestFiniteMagnitude)
// Der kleinste Double-Wert
print(Double.leastNormalMagnitude)

var a = 75
var b = 3.8

// Die Addition von unterschiedlichen Datentypen
// führt zu einer Fehlermeldung!
// let sum = a + b

// Die Double-Funktion:
// a wird zunächst in einen Double umgewandelt
// c wird so zu einem Double-Typ
var sumDouble = Double(a) + b

// Die Int-Funktion:
// b wird zunächst in einen Int-Typen umgewandelt
// c wird so zu einem Int-Typ
var sumInt = a + Int(b)

var x = 100
var y = 60

// Einzelne Konvertierung, nicht erforderlich
// var sum = Double(x) + Double(y)

// Konvertierung der Summe
var sumXY = Double(x + y)
