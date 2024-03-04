//
//  CalculationViewController.swift
//  BonusAssignment
//
//  Created by Emma Brennan on 2/25/24.
//

import UIKit

class CalculationViewController: UIViewController {
    
    
    var classification = ""
    var bmi = ""
    
    @IBOutlet weak var classificationLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        classificationLabel.text = "Your BMI of \(bmi) is considered \(classification)"

        // Do any additional setup after loading the view.
    }

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
