import Foundation

// Einzelpreis
var itemPrice = 5.99
// Anzahl
var quantity = 12.0
// Gesamtsumme
var totalPrice = itemPrice * quantity
// Zielort
var country = "Frankreich"

if country != "Deutschland"
{
    let shippingCosts = 12.99
    totalPrice = totalPrice + shippingCosts
}

print(totalPrice)

// Die Konstante wird außerhalb ihres
// Gültigkeitsbereiches angesprochen
// print(shippingCosts)

var index = 101

for  index in 1...50
 {
     print(index)
 }

print(index)


var loopCounter = 101

for  index in 1...50
{
    print(index)
    loopCounter = index
}

print(loopCounter)


var value:Double? = 4.4

// Optional-Binding innerhalb einer if-Struktur
if var value = value
{
    print(value)
}

// Überprüfung und Zugriff ohne Optional-Binding
if value != nil
{
    print(value!)
}


