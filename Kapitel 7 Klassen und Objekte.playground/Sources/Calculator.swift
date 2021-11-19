import Foundation

public class Calculator
{
    public init()
    {
    }
    
    // Öffentliches Produkt
    public var product:Double = 0.0
    
    // Öffentliche Faktoren
    public var factor1:Double = 0.0
    {
        didSet
        {
            // Das Produkt wird neu berechnet sobald
            // einem Faktor ein neuer Wert zugewiesen
            // wird
            self.product = self.factor1 * self.factor2
        }
    }
    
    public var factor2:Double = 0.0
    {
        didSet
        {
            self.product = self.factor1 * self.factor2
        }
    }
}

