import Foundation
import PlaygroundSupport // Neu
PlaygroundPage.current.needsIndefiniteExecution = true // Neu

var outputTime =
{
    () -> () in
    let date = NSDate()
    let formatter = DateFormatter()
    formatter.timeStyle = DateFormatter.Style.full
    let dateString = formatter.string(from: date as Date)
    print(dateString)
}

// Closure direkt ausführen
outputTime()

// Zwei Sekunden
let delay = 2.0
// Jetzt + zwei Sekunden
let futureTime =  DispatchTime.now() + delay
// Eine Warteschlange vom GCD holen

let queue = DispatchQueue.global(qos: .background)

// Closure zeitverzögert ausführen
queue.asyncAfter(deadline: futureTime) { outputTime() }

// Funktionsaufruf mit Inline-Closure
queue.asyncAfter(deadline: futureTime)
{
        let date = NSDate()
        let formatter = DateFormatter()
        formatter.timeStyle = DateFormatter.Style.full
        let dateString = formatter.string(from: date as Date)
        print(dateString)
}
