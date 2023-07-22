//  By Askar Soronbekov
//  CustomTextField.swift
//  Neobis_IOS_LoginApp

import UIKit

class CustomTextField: UITextField {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.backgroundColor = UIColor(red: 125/255, green: 125/255, blue: 125/255, alpha: 1).cgColor
        
        layer.cornerRadius = 25
        
    }
    
}
