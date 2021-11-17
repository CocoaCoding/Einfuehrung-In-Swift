import Foundation
import PlaygroundSupport // Neu
PlaygroundPage.current.needsIndefiniteExecution = true // Neu

let dispatchQueue = DispatchQueue.global(qos: .background)

dispatchQueue.async
{
    var sum = 0.0;
    
    for index in 1..<1000
    {
        sum = sum + Double(index)
    }
    
    let mainQueue = DispatchQueue.main
    mainQueue.async
    {
        print("Die Summe ist: \(sum).")
    }
}

