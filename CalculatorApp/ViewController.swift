//
//  ViewController.swift
//  CalculatorApp
//
//  Created by Hewlett, Brianna Anne on 10/31/19.
//  Copyright © 2019 Hewlett, Brianna Anne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount1TextField: UITextField!
    
    
    @IBOutlet weak var amount2TextField: UITextField!
    
    @IBOutlet weak var calculationLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addValues(_ sender: Any) {
        var dTotal = 0.0
        var dAmount1 = 0.0
        var dAmount2 = 0.0
        
        if let amount1 = amount1TextField.text, let amount2 = amount2TextField.text{
            let trimmedAmount1 = amount1.trimmingCharacters(in: .whitespaces)
            let trimmedAmount2 = amount2.trimmingCharacters(in: .whitespaces)
            
            if(!trimmedAmount1.isEmpty && !trimmedAmount2.isEmpty){
                dAmount1 = Double(trimmedAmount1)!
                dAmount2 = Double(trimmedAmount2)!
                
                dTotal = dAmount1 + dAmount2
            }
        }
        calculationLabel.text = String(dTotal)
    }
    
    @IBAction func subtractValues(_ sender: Any) {
        var dTotal = 0.0
        var dAmount1 = 0.0
        var dAmount2 = 0.0
        
        if let amount1 = amount1TextField.text, let amount2 = amount2TextField.text{
            let trimmedAmount1 = amount1.trimmingCharacters(in: .whitespaces)
            let trimmedAmount2 = amount2.trimmingCharacters(in: .whitespaces)
            
            if(!trimmedAmount1.isEmpty && !trimmedAmount2.isEmpty){
                dAmount1 = Double(trimmedAmount1)!
                dAmount2 = Double(trimmedAmount2)!
                
                dTotal = dAmount1 - dAmount2
            }
        }
        calculationLabel.text = String(dTotal)
    }
    
    @IBAction func multiplyValues(_ sender: Any) {
        var dTotal = 0.0
        var dAmount1 = 0.0
        var dAmount2 = 0.0
        
        if let amount1 = amount1TextField.text, let amount2 = amount2TextField.text{
            let trimmedAmount1 = amount1.trimmingCharacters(in: .whitespaces)
            let trimmedAmount2 = amount2.trimmingCharacters(in: .whitespaces)
            
            if(!trimmedAmount1.isEmpty && !trimmedAmount2.isEmpty){
                dAmount1 = Double(trimmedAmount1)!
                dAmount2 = Double(trimmedAmount2)!
                
                dTotal = dAmount1 * dAmount2
            }
        }
        calculationLabel.text = String(dTotal)
    }
    
    
    @IBAction func divideValues(_ sender: Any) {
        var dTotal = 0.0
        var dAmount1 = 0.0
        var dAmount2 = 0.0
        
        if let amount1 = amount1TextField.text, let amount2 = amount2TextField.text{
            let trimmedAmount1 = amount1.trimmingCharacters(in: .whitespaces)
            let trimmedAmount2 = amount2.trimmingCharacters(in: .whitespaces)
            
            if(!trimmedAmount1.isEmpty && !trimmedAmount2.isEmpty){
                dAmount1 = Double(trimmedAmount1)!
                dAmount2 = Double(trimmedAmount2)!
                
                dTotal = dAmount1 / dAmount2
            }
        }
        calculationLabel.text = String(dTotal)
    }
}

