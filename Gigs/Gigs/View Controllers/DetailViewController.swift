//
//  DetailViewController.swift
//  Gigs
//
//  Created by Diante Lewis-Jolley on 5/9/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

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


    @IBAction func saveButtonTapped(_ sender: Any) {
    }
    


    @IBOutlet weak var jobTitleTextField: UITextField!
    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var textView: UITextView!




}
