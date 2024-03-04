//
//  ViewController.swift
//  BonusAssignment
//
//  Created by Emma Brennan on 2/25/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightField: UITextField!
    @IBOutlet weak var weightField: UITextField!
    
    var bmiLogic = BMILogic()

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        heightField.delegate = self
//        weightField.delegate = self
        
        // Do any additional setup after loading the view.
    }

    @IBAction func calculateButton(_ sender: Any) {
        
        // hardcoded user input values to test calculations
        bmiLogic.bmi = bmiLogic.calcBMI(68, weight: 120)
        
        self.performSegue(withIdentifier: "toCalculation", sender: self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightField.resignFirstResponder()
        weightField.resignFirstResponder()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCalculation" {
            let navigation = segue.destination as! CalculationViewController
            navigation.classification = bmiLogic.classification
            navigation.bmi = String(bmiLogic.bmi)
        }
    }
    
}

extension ViewController : UITextFieldDelegate {
    
    func textFieldShouldClear(_ textField: UITextField) -> Bool {
        return true
    }
}

