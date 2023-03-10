//
//  ViewController.swift
//  CalculatorProtocolOriented
//
//  Created by 윤병은 on 2023/03/05.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var calculator = Calculator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculator.delegate = self
    }
    
    
    @IBAction func tapNumber(_ sender: UIButton) {
        guard let num = sender.titleLabel?.text else { return }
        calculator.addNumber(num: num)
    }

}

extension ViewController: CalculatorDelegate {
    func updateView(result: String) {
        resultLabel.text = result
    }

    
}
