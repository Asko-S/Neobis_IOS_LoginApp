//
//  SignUpButton.swift
//  Neobis_IOS_LoginApp
//

import UIKit

class SignUpButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        
        layer.backgroundColor = UIColor(red: 250/255, green: 245/255, blue: 248/255, alpha: 1).cgColor
        
        layer.cornerRadius = 15
    }

}
