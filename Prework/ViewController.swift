//
//  ViewController.swift
//  Prework
//
//  Created by user210941 on 1/24/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billAmountTextField: UITextField!
    @IBOutlet weak var tipAmountLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateTip() {
        let subtotal = Double(billAmountTextField.text!) ?? 0;
        
        let tipPercentages = [0.15, 0.18, 0.20]
        
        let tip = subtotal * tipPercentages[tipControl.selectedSegmentIndex];
        
        let total = subtotal + tip;
        
        tipAmountLabel.text = String(format: "$%.2f", tip);
        totalLabel.text = String(format: "%.2f", total);
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        updateTip();
    }
    
    @IBAction func billAmountUpdated(_ sender: Any) {
        updateTip();
    }
}

