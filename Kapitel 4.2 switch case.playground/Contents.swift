import Foundation

var customers = 20
var customersText = ""

switch customers
{
    case 20:
        customersText = "Wir haben 20 Kunden."
    case 21:
        customersText = "Wir haben 21 Kunden."
    case 22:
        customersText = "Wir haben 22 Kunden."
    default:
        customersText = "Wir haben eine andere Anzahl von Kunden"
}


switch customers
{
    case 20, 21, 22:
        customersText = "Wir haben 20, 21 oder 22 Kunden."
    case 30, 31, 32:
        customersText = "Wir haben 30, 31 oder 32 Kunden."
    default:
        customersText = "Wir haben eine andere Anzahl von Kunden"
}

switch customers
{
case 1:
    customersText = "Wir haben einen Kunden."
case 2...20:
    customersText = "Wir haben zwei bis 20 Kunden."
case 21...50:
    customersText = "Wir haben 21 bis 50 Kunden."
default:
    customersText = "Wir haben eine andere Anzahl von Kunden"
}



customers = 18

switch customers
{
case 2...20:
    customersText = "Wir haben zwei bis 20 Kunden."
    fallthrough
case 21...50:
    customersText += " Wir haben genügend Kunden."
default:
    customersText = "Wir haben nicht genügend Kunden."
}

print(customersText)



switch customers
{
case 2...20:
    customersText = "Wir haben zwei bis 20 Kunden."
    // Die folgende break-Anweisung ist nicht erforderlich.
    break;
case 21...50:
    customersText = "Wir haben 21 bis 50 Kunden."
    // Die folgende break-Anweisung ist nicht erforderlich.
    break
default:
    // Hier gibt es nichts zu tun aber Swift benötigt
    // immer einen default-Fall.
    break
}

// hallo
