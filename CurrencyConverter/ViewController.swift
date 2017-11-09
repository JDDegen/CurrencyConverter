//
//  ViewController.swift
//  CurrencyConverter
//
//  Created by user on 11/1/17.
//  Copyright © 2017 Jordan Degen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    //Interactions
    @IBOutlet weak var poundLabel: UILabel!
    @IBOutlet weak var yenLabel: UILabel!
    @IBOutlet weak var euroLabel: UILabel!
    @IBOutlet weak var inputTextField: UITextField!
    
    //exchange rates
    let poundRate = 0.69
    let yenRate = 113.94
    let euroRate = 0.89
    var dollarAmount = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        inputTextField.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }
    //Convert Button
    @IBAction func convertCurrency(_ sender: UIButton) {
        if let amount = Double(inputTextField.text!){
            dollarAmount = amount
        }
        
        poundLabel.text = "\(dollarAmount * poundRate)"
        yenLabel.text = "\(dollarAmount * yenRate)"
        euroLabel.text = "\(dollarAmount * euroRate)"
        dollarAmount = 0.0
    }
    //Clear Button
    @IBAction func clear(_ sender: Any) {
        poundLabel.text = "0.0"
        yenLabel.text = "0.0"
        euroLabel.text = "0.0"
        dollarAmount = 0.0
    }
    
   
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
        //Called when 'return' key is pressesd
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        return true
    }
        //Called when user taps outside text field
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
}

}
