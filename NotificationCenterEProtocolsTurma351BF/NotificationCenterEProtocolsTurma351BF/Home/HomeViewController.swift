//
//  ViewController.swift
//  NotificationCenterEProtocolsTurma351BF
//
//  Created by Caio Fabrini on 10/10/23.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var chooseButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
    }
    
    
    @IBAction func tappedChooseButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "OptionsViewController", bundle: nil).instantiateViewController(withIdentifier: "OptionsViewController") as? OptionsViewController
        vc?.modalPresentationStyle = .fullScreen
        present(vc ?? UIViewController(), animated: true)
    }
    

}

