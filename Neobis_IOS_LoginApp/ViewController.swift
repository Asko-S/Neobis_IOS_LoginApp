import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    
    @IBOutlet weak var password: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        username.delegate = self
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

