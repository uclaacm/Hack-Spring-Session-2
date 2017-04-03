//
//  SubmittedTextViewController.swift
//  session2-demo
//
//  Created by Shannon Phu on 3/28/17.
//  Copyright © 2017 Shannon Phu. All rights reserved.
//

import UIKit

class SubmittedTextViewController: UIViewController {
    var submittedUser: User?
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set label text if user info was correctly input at previous screen
        if let user = self.submittedUser {
            self.nameLabel.text = user.name
            self.ageLabel.text = "\(user.age)"
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
