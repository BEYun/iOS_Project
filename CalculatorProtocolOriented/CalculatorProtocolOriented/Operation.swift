//
//  Operation.swift
//  CalculatorProtocolOriented
//
//  Created by 윤병은 on 2023/03/05.
//

import Foundation

enum Operation {}

extension Operation {
    enum Arithmetic {
        case plus
        case minus
        case multiply
        case divide
    }
    
    enum Function {
        case sign
        case percent
        case none
    }
}
