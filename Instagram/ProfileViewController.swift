//
//  ProfileViewController.swift
//  Instagram
//
//  Created by Vicky Tang on 3/7/17.
//  Copyright © 2017 Vicky Tang. All rights reserved.
//

import UIKit
import Parse

class ProfileViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onLogout(_ sender: Any) {
        PFUser.logOutInBackground { (error: Error?) in
            PFUser.logOutInBackground { (error: Error?) in
                print("Logged out")
                let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
                
                let nextViewController = storyBoard.instantiateViewController(withIdentifier: "LoginViewController") as! LoginViewController
                self.present(nextViewController, animated:true, completion:nil)
            }
        }
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
