//
//  LoginViewController.swift
//  Smart-Attendance
//
//  Created by Yandapalli,Uma on 2/16/18.
//  Copyright © 2018 Modali,Naga Sravanthi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if identifier == "submitId"{
            
            if(firstNameTF.text==""||lastNameTF.text==""||phoneNoTF.text==""||emailTF.text==""){
                let alert = UIAlertController(title: title, message: "Please enter all Fields",preferredStyle: .alert) // actions, displayed as Buttons in the alert, specify both the title of the button                 // and what to do -- in the handler -- when the button is tapped)
                alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated:true,completion:nil)
                    
                }))
                self.present(alert,animated: true,completion:nil)
            }
        }
        return true
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