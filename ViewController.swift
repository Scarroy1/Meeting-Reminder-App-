//
//  ViewController.swift
//  Garmin App
//
//  Created by Anjali Roy on 11/14/18.
//  Copyright © 2018 Anjali Roy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
// press login which goes to the login page
    @IBAction func goto_loginpage(_ sender: Any) {
        
    }
// beginning of stuff for login
}
import UIKit


    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        return true
}



weak var password: UITextField!
weak var passwordConfirm: UITextField!

func signUpAction(_ sender: Any) {
    if password.text != passwordConfirm.text {
        let alertController = UIAlertController(title: "Password Incorrect", message: "Please re-type password", preferredStyle: .alert)
        let signupAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        
        alertController.addAction(defaultAction)
        self.present(alertController, animated: true, completion: nil)
    }
    else{
    func createUser(_sender: Any){
      createUser(password:){ (user, error) in
            if error == nil {
                self.performSegue(withIdentifier: "signupToHome", sender: self)
            }
            else{
                let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
    }
}
// login function here
 func goto_loginpage(sender: Any) {
    (password:);{ (user, error) in
        if error == nil{
            self.performSegue(withIdentifier: "loginToHome", sender: self)
        }
        else{
            let alertController = UIAlertController(title: "Error", message: error?.localizedDescription, preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
}
}
