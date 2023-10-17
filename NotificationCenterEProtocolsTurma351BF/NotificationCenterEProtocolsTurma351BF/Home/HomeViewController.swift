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
        configObserver()
    }
    
    func configObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(changeMacbook), name: .macbook, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(changeImac), name: .imac, object: nil)
    }
    
    @objc func changeMacbook(_ notification: NSNotification) {
//        let color = notification.object as? String
        view.backgroundColor = .red
        logoImageView.image = UIImage(named: "macbook_pro")
        titleLabel.text = "Macbook Pro"
    }
    
    @objc func changeImac(_ notification: NSNotification) {
//        let color = notification.object as? String
        view.backgroundColor = .cyan
        logoImageView.image = UIImage(named: "imac_pro")
        titleLabel.text = "Imac das galáxias"
    }
    
    
    @IBAction func tappedChooseButton(_ sender: UIButton) {
        let vc = UIStoryboard(name: "OptionsViewController", bundle: nil).instantiateViewController(withIdentifier: "OptionsViewController") as? OptionsViewController
        vc?.modalPresentationStyle = .fullScreen
        vc?.delegate = self
        present(vc ?? UIViewController(), animated: true)
    }
    
}

extension HomeViewController: OptionsViewControllerProtocol {
    func actionMacbook() {
        view.backgroundColor = .orange
    }
    
    func actionImac() {
        view.backgroundColor = .purple
    }
}

