import Foundation

var cities = ["Berlin", "Prag", "Wien", "Zürich"]
var colors = ["Blau", "Gelb", "Grün", "Schwarz"]
var mainDict = ["cities":cities, "colors":colors]

var firstCity = mainDict["cities"]!.first
var firstColor = mainDict["colors"]!.first

var anotherDict = [String: [String]]()
anotherDict["cities"] = cities
anotherDict["colors"] = colors

var lastCity = anotherDict["cities"]!.last
var lastColor = anotherDict["colors"]!.last

var moreCities = ["K":"Köln", "L":"London", "R":"Rom", "P":"Paris"]
var moreColors = ["R":"Rot", "O":"Orange", "G":"Grau", "M":"Magenta"]

var dataArray = [[String:String]]()
dataArray.append(moreCities)
dataArray.append(moreColors)

var london = dataArray.first!["L"]
var magenta = dataArray.last!["M"]
