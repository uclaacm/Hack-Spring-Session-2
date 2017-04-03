//
//  SubmitViewController.swift
//  session2-demo
//
//  Created by Shannon Phu on 3/28/17.
//  Copyright © 2017 Shannon Phu. All rights reserved.
//

import UIKit

class SubmitViewController: UIViewController {
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var ageField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Check segue identifier for the correct destination VC
        if segue.identifier == "submit_text" {
            // Unwrap values in textfields
            if let name = self.nameField.text, let age = Int(self.ageField.text!) {
                // Make User object from unwrapped optional values
                let user = User(name: name, age: age)
                
                // Get the new view controller using segue.destinationViewController.
                // Pass the selected object to the new view controller.
                if let vc = segue.destination as? SubmittedTextViewController {
                    vc.submittedUser = user
                }
                
            }
        }
    }

}
