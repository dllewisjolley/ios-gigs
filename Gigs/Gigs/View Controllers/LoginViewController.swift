//
//  LoginViewController.swift
//  Gigs
//
//  Created by Diante Lewis-Jolley on 5/9/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    


    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }


    @IBAction func segmentsControlTapped(_ sender: UISegmentedControl) {
    }

    
    @IBAction func signUpButtonTapped(_ sender: Any) {
    }
    



    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!



}
