import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var username: UITextField!
    
    
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
    }
}

