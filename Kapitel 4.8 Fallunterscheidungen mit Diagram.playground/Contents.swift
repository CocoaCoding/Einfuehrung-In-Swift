import Foundation

var helperValue = 0;
var finalValue = 0

for index in 1...100
{
    if index % 3 == 0 || index % 2 == 0
    {
        helperValue = 0
    }
    else
    {
        helperValue = index
    }
    
    finalValue = helperValue
}

var cosValue = 0.0
var sinValue = 0.0

// Wertebereich durchlaufen von 0.0 bis 25.0
for counter in stride(from: 0.0, to: 25.1, by: 0.1)
{
    counter
    cosValue = cos(counter)
    sinValue = sin(counter)
}
