import Foundation

func createAddress(firstName:String = "", lastName:String = "", isMale:Bool) -> String
{
    var address = "\(firstName) \(lastName)"
    
    // Dieser Aufruf entfernt Leerzeichen am Anfand und am
    // Ende der Zeichenkette
    address = address.trimmingCharacters(in: CharacterSet.whitespaces)
    
    if isMale
    {
        address = "Sehr geehrter Herr \(address)"
    }
    else
    {
        address = "Sehr geehrte Frau \(address)"
    }
    
    return address
}

var addressMale = createAddress(firstName: "Max", lastName: "Maulwurf", isMale: true)

var addressFemale = createAddress(lastName: "Schubert", isMale: false)

