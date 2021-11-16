import Foundation

let startTag = "<title>"
let endTag = "</title>"
var pageTitle = ""
var htmlSource = "Html Quelltext <title>Meine Webseite</title> Mehr Html Quelltext"

var startRange = htmlSource.range(of: startTag, options: NSString.CompareOptions.caseInsensitive)
if startRange != nil
{
    // Text nach dem öffnenden Tag extrahieren
    pageTitle = String(htmlSource[startRange!.upperBound..<htmlSource.endIndex])
    
    let endRange = pageTitle.range(of: endTag, options: NSString.CompareOptions.caseInsensitive)
    if endRange != nil
    {
        // Text bis zm schließenden Tag freistellen
        pageTitle = String(pageTitle[pageTitle.startIndex..<endRange!.lowerBound])
    }
}

print(pageTitle)

var myProfession = "Ich bin Softwareentwickler."
// Eine Range anlegen, die den gesamten String beinhaltet
var myRange = myProfession.indices

// Wie lang ist der Bereich von start bis end?
var lengthOfString = myRange.distance(from: myRange.startIndex, to: myRange.endIndex)

print("Die Range ist \(lengthOfString) Zeichen lang.")

// Die Zeichen zählen können wir auch mit count
var charCount = myProfession.count
print("Die Range ist \(charCount) Zeichen lang.")



// Das ist ein String
var x1 = "X"
// Das ist ein Character
var x2: Character = "X"

var earth = "\u{1F30D}"
var planet = "Earth \u{1F30D}"

// Ein Bereich über dem gesammten String
var planetRange = planet.indices
// Das erste Zeichen der Zeichenkette
var planetFirst = planet[planetRange.startIndex]

//var planetLast = planet[planetRange.endIndex]

let offset = 6
// Eine Position, sechs Zeichen entfernt vom StartIndex
let stringIndex = planetRange.index(planetRange.startIndex, offsetBy: 6)
let symbol:Character = planet[stringIndex]


var blindText
= "Franz jagt im komplett verwahrlosten Taxi quer durch Bayern."
var blindRange = blindText.indices

// Der Text zwischen den Positionen 23 und 35
var substring
= blindText[blindRange.index(blindText.startIndex, offsetBy: 23)
    ... blindRange.index(blindText.startIndex, offsetBy: 35)]

var demoText
= "Falsches Üben von Xylophonmusik quält jeden größeren Zwerg."
// Die ersten acht Zeichen
var pre = String(demoText.prefix(8))
// Die letzten sieben Zeichen
var sub = String(demoText.suffix(7))

var xylophon = "Xylophonmusik"
var firstChar:Character? = xylophon.first
var lastChar:Character? = xylophon.last

// Das erste Zeichen entfernen
var firstDroped = String(xylophon.dropFirst())
// Das letzte Zeichen entfernen
var lastDroped = String(xylophon.dropLast())

var reform =  "reChtSchreiBrEforM"
var firstChr = reform.first
reform = String(reform.dropFirst())
// Zeichenkette neu zusammensetzen
reform = "\(String(firstChr!).uppercased())"
    + "\(reform.lowercased())"


