import Foundation



public protocol SomeProtocol {
    init(num: Int)
}


class AB: SomeProtocol{
    
    var num : Int
    
    public required init(num: Int) {
        self.num = num
    }
}




public class CalculatorPackage<T: SomeProtocol>: Inputable
{
    public typealias Val = String
    
    public var data: String = ""
    
    public func add(_ data: String) {
        T.init(num: 1)
    }
    
}
