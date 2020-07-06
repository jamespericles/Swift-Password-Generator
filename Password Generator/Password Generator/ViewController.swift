import UIKit

class ViewController: UIViewController {
    
    let lowercase = "abcdefghijklmnopqrstuvwxyz",
    uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    numbers = "0123456789",
    specialChar = "!@#$%^&*()_+~`|}{[]:;?><,./-="
    
    
    @IBOutlet weak var lowercaseSwitch: UISwitch!
    @IBOutlet weak var uppercaseSwitch: UISwitch!
    @IBOutlet weak var numberSwitch: UISwitch!
    @IBOutlet weak var specialSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    
    @IBAction func generateButtonPressed(_ sender: UIButton) {
        
        var passwordCharSet = ""
        
        if lowercaseSwitch.isOn{
            passwordCharSet += lowercase
        }
        
        if uppercaseSwitch.isOn {
            passwordCharSet += uppercase
        }
        
        if numberSwitch.isOn {
            passwordCharSet += numbers
        }
        
        if specialSwitch.isOn {
            passwordCharSet += specialChar
        }
        
       print(passwordCharSet)
    }
    
    
    
}


