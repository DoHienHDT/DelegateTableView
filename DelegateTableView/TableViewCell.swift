//
//  TableViewCell.swift
//  DelegateTableView
//
//  Created by dohien on 7/26/18.
//  Copyright © 2018 hiền hihi. All rights reserved.
//

import UIKit
protocol TableViewCellDelegate: class {
    func senData(data: String)
    func removeData(indexPath: IndexPath)
}
class TableViewCell: UITableViewCell {
   weak var delegate: TableViewCellDelegate?
    
    var indexPath: IndexPath!
    
    @IBOutlet weak var nameTextField: UITextField!
    @IBAction func saveButton(_ sender: UIButton) {
        delegate?.senData(data: nameTextField.text ?? "")
        print("Save")
    }
    @IBAction func removeData(_ sender: UIButton) {
        guard indexPath != nil else {
            return
        }
        self.delegate?.removeData(indexPath: indexPath)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
