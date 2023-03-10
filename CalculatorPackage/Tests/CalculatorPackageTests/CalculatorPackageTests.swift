import XCTest
@testable import CalculatorPackage

final class CalculatorPackageTests: XCTestCase {
    
//    var input: CalculatorPackage = CalculatorPackage()
    
    var test: CalculatorPackage<AB> = .init()
    
    func testInit() throws {
//        XCTAssertEqual(CalculatorPackage().text, "Hi, there!")
        test.add("")
        
    }
    
    
}
