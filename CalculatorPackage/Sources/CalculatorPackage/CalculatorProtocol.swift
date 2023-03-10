//
//  CalculatorProtocol.swift
//  
//
//  Created by BEYun on 2023/03/10.
//

import Foundation

protocol Adding {
    
}

protocol Substracting {
    
}

protocol Multiplying {
    
}

protocol Dividing {
    
}

protocol Calculatable: Adding, Substracting, Multiplying, Dividing {
    
}

protocol Inputable {
    
    associatedtype Val
    
    var data: Val { get set }
    
    func add(_ data: Val)
}
