//  By Askar Soronbekov
//  Neobis_IOS_LoginApp
//  23/07/2023


import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.delegate = self
        
        
        let placeholderText = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
                username.attributedPlaceholder = placeholderText
                let placeholderTextPassword = NSAttributedString(string: "Password", attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
                password.attributedPlaceholder = placeholderTextPassword
        
    }
    
}

extension ViewController: UITextFieldDelegate {
    func textFieldDidEndEditing(_ textField: UITextField) {
        if let text = username.text {
            print("Entered username: \(text)")
        }
        if let text = password.text {
            print("Entered password: \(text)")
        }
    }
}

