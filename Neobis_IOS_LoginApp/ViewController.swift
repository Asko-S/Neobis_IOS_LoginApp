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
                
        let coloredSafeAreaView = UIView()
               coloredSafeAreaView.backgroundColor = UIColor.darkGray // Set the color to dark grey
               coloredSafeAreaView.translatesAutoresizingMaskIntoConstraints = false
               
               // Add the colored view as a subview of the view controller's view
               view.addSubview(coloredSafeAreaView)
               
               // Position the colored view behind all other views
               view.sendSubviewToBack(coloredSafeAreaView)
               
               // Set constraints to match the safe area insets
               NSLayoutConstraint.activate([
                   coloredSafeAreaView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                   coloredSafeAreaView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
                   coloredSafeAreaView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
                   coloredSafeAreaView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
               ])
        
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

