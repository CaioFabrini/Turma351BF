//
//  EmployeeTableViewCell.swift
//  TableViewAvancado
//
//  Created by Gabriel Mors  on 28/09/23.
//

import UIKit

protocol EmployeeTableViewCellProtocol: AnyObject {
    func tappedHeartButton(indexPath: IndexPath?)
}

class EmployeeTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var ageLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!
    
    private weak var delegate: EmployeeTableViewCellProtocol?
    private var isEnableHeart: Bool = false
    static var identifier: String = String(describing: EmployeeTableViewCell.self)
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    public func delegate(delegate: EmployeeTableViewCellProtocol?) {
        self.delegate = delegate
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        delegate?.tappedHeartButton(indexPath: indexPath)
        isEnableHeart.toggle()
        configHeart()
    }
    
    func setupCell(data: Employee) {
        userImageView.image = data.image
        nameLabel.text = "Nome: \(data.name)"
        ageLabel.text = "Idade: \(data.age)"
        jobLabel.text = "Profissão: \(data.job)"
        salaryLabel.text = "Salário: \(data.salary)"
        isEnableHeart = data.isEnableHeart
        configHeart()
    }
    
    func configHeart() {
        if isEnableHeart {
            heartButton.tintColor = .red
        } else {
            heartButton.tintColor = .blue
        }
    }
}

extension UITableViewCell {
    var tableView: UITableView? {
        return next(UITableView.self)
    }

    var indexPath: IndexPath? {
        return tableView?.indexPathForRow(at: self.center)
    }
}

extension UIResponder {
    func next<T: UIResponder>(_ type: T.Type) -> T? {
        self.next as? T ?? self.next?.next(type)
    }
}

