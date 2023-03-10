//
//  Calculator.swift
//  CalculatorProtocolOriented
//
//  Created by 윤병은 on 2023/03/05.
//

import Foundation

protocol CalculatorDelegate {
    func updateView(result: String)
}

struct Calculator: Calculatable, Functionable, NumberInputable {
        
    var delegate: CalculatorDelegate?
    
    var firstOperand: Double = 0.0
    var secondOperand: Double?
    var operation: Operation?
    
}

protocol Calculatable: Addible, Substractable, Multiplicable, Divisible {
    var firstOperand: Double { get set }
    var secondOperand: Double? { get set }
    var operation: Operation? { get set }
}

protocol Functionable: Signable, Percentizable {}

protocol NumberInputable {
    mutating func addNumber(num: String)
}

protocol Addible {
    mutating func makePlus()
}

protocol Substractable {
    mutating func makeMinus()
}

protocol Multiplicable {
    mutating func makeMultiply()
}

protocol Divisible {
    mutating func makeDivide()
}

protocol Signable {
    mutating func addSign()
}

protocol Percentizable {
    mutating func addPercent()
}


// 구현

extension Calculator {
    mutating func addNumber(num: String) {
        var currentString = num
        self.delegate?.updateView(result: currentString)
    }
    
    mutating func makePlus() {
        var result = self.firstOperand + (self.secondOperand ?? 0.0)
        self.delegate?.updateView(result: String(result))
    }
    
    mutating func makeMinus() {
        var result = self.firstOperand - (self.secondOperand ?? 0.0)
        self.delegate?.updateView(result: String(result))
    }
    
    mutating func makeMultiply() {
        var result = self.firstOperand * (self.secondOperand ?? 0.0)
        self.delegate?.updateView(result: String(result))
    }
    
    mutating func makeDivide() {
        var result = self.firstOperand / (self.secondOperand ?? 0.0)
        self.delegate?.updateView(result: String(result))
    }
    
    mutating func addSign() {
        var result = self.firstOperand + (self.secondOperand ?? 0.0)
        self.delegate?.updateView(result: String(result))
    }
    
    mutating func addPercent() {
        var result = self.firstOperand + (self.secondOperand ?? 0.0)
        self.delegate?.updateView(result: String(result))
    }
}
