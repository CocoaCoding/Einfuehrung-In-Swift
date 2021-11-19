import Foundation

public class Person
{
    public init()
    {
    }
        
    //public var lastName:String = ""
    
    public var lastName:String = ""
    {
        willSet(lastName)
        {
            print("Der Name \(lastName) soll zugewiesen werden.")
            print("Der Name lautet bisher: \(self.lastName)")
        }
        didSet
        {
            print("Der Name \(self.lastName) wurde zugewiesen.")
            print("Der Name lautet bisher: \(oldValue)")
        }
    }
    
    public var firstName:String = ""
    public var age:Int = 0
    
    // Das Alter der Person in Tagen
    // (Vereinfachte Berechnung)
    public var ageInDays:Int
    {
        // Getter um den Wert zu lesen
        get { return self.age * 365}
        // Setter um den Wert zu schreiben
        set (days)
        {
            if days < 0
            {
                self.age = 0
            }
            else
            {
                self.age = days / 365
            }
        }
    }
}
