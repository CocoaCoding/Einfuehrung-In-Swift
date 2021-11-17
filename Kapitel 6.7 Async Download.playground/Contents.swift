import Foundation
import PlaygroundSupport // Neu
PlaygroundPage.current.needsIndefiniteExecution = true // Neu

let url:URL? = URL(string: "http://www.cocoa-coding.de")
var request = URLRequest(url: url!)
request.httpMethod = "GET"
let session = URLSession.shared

session.dataTask(with: request) {data, response, err in
    
    if err != nil
    {
        print("Fehler: \(err!.localizedDescription)")
    }
    else
    {
        let dataString = NSString(data: data!, encoding: UInt())
        print(dataString!)
    }
}.resume()




