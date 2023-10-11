//
//  OptionsViewController.swift
//  NotificationCenterEProtocolsTurma351BF
//
//  Created by Caio Fabrini on 10/10/23.
//

import UIKit

class OptionsViewController: UIViewController {
    
    @IBOutlet weak var macbookButton: UIButton!
    @IBOutlet weak var imacButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func tappedMacbookButton(_ sender: Any) {
        // Neste exemplo alem de gritar a nossa chave "macbook", tambem estamos levando o object UIColor (você pode setar qualquer tipagem no object)
//        NotificationCenter.default.post(name: NSNotification.Name("macbook"), object: UIColor.cyan)
        
        NotificationCenter.default.post(name: .macbook, object: nil)
        dismiss(animated: true)
    }
    
    @IBAction func tappedImacButton(_ sender: UIButton) {
        NotificationCenter.default.post(name: .imac, object: nil)
        dismiss(animated: true)
    }

}
