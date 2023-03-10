import Foundation


class Human {
    var name = ""
    lazy var getName: () -> String? = { [weak self] in
        return self?.name
    }
    
    init(name: String) {
        self.name = name
    }
 
    deinit {
        print("Human Deinit!")
    }
}

struct NotHuman {
    var name: String = "notRobo"
    
    func printName() -> String {
        return self.name
    }
    
    init() {
        self.name = "robo"
    }
}

var robot = NotHuman()
robot.printName()

var sodeul: Human? = .init(name: "Kim-Sodeul")
print(sodeul!.getName() as Any)
sodeul = nil


let str22: String = ""
let val = type(of: str22)
print(val)

func meth(of nums: [Int]) -> [Int] {
    return nums
}

func meth2(of nums: Int...) -> [Int] {
    return nums
}

let numbers = [1, 2, 3, 4, 5]
meth(of: numbers)

var arr = "123456789.0000"
var idxDot = arr.firstIndex(of: ".")!
print(arr[...idxDot])
print(arr[idxDot...])

var zero: Double = -0
print(zero)

var num1: Double = 10
let num2: Double = 100.0
let operation = "/"

var dbnum: String = "0.517990444880147e+18"
var dbnum2: Double = Double(dbnum)!


let mathExpression = NSExpression(format: "\(num1)\(operation)\(num2)")
let mathValue = mathExpression.expressionValue(with: nil, context: nil) as! NSNumber // result : 3

let str1 = "hi"
let str2 = "3,000.000"

let dotIndex = str2.firstIndex(of: ".")!
let seq1 = str2[..<dotIndex]
let seq2 = str2[dotIndex...]

let resultString = String(seq1) + String(seq2)
print(type(of: resultString))



let str = "\(str1)\(str2)"


let formular = "\(num1)\(operation)\(num2)"

let mathExpression2 = NSExpression(format: formular)
guard let mathValue2 = mathExpression2.expressionValue(with: nil, context: nil) as? NSNumber else { fatalError("optional is nil") }
print(mathValue2.stringValue)


func stringCalculator(formular: String) -> String {
    let mathExpression = NSExpression(format: formular)
    guard let mathValue = mathExpression.expressionValue(with: nil, context: nil) as? NSNumber else { return "" }
    return mathValue.stringValue
}

let result = "0.000"
let result2 = Double(result)

let numberFormatter = NumberFormatter()
numberFormatter.numberStyle = .scientific
numberFormatter.maximumFractionDigits = 5

