//
//  ViewController.swift
//  UserDefaults
//
//  Created by Gabriel Mors  on 23/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.text = Utils.getUserDefaults(key: "name") as? String
    }

    @IBAction func tappedAddButton(_ sender: UIButton) {
        Utils.addUserDefaults(value: nameTextField.text ?? "", key: "name")
    }
    
    @IBAction func tappedRemoveButton(_ sender: UIButton) {
        Utils.removeUserDefaults(key: "name")
    }
}

