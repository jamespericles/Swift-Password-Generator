import UIKit

class ViewController: UIViewController {
    
    
//    Variables containing the different possible characters
    let lowercase = "abcdefghijklmnopqrstuvwxyz",
    uppercase = "ABCDEFGHIJKLMNOPQRSTUVWXYZ",
    numbers = "0123456789",
    specialChar = "!@#$%^&*()_+~`|}{[]:;?><,./-="
    
    
    
//    Pull the switches from the storyboard
    @IBOutlet weak var lowercaseSwitch: UISwitch!
    @IBOutlet weak var uppercaseSwitch: UISwitch!
    @IBOutlet weak var numberSwitch: UISwitch!
    @IBOutlet weak var specialSwitch: UISwitch!
//    All elements related to the slider and displaying its length
    @IBOutlet weak var sliderLength: UISlider!
    @IBOutlet weak var sliderLengthDisplay: UILabel!
//    UITextView where password is displayed
    @IBOutlet weak var passwordDisplay: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
//     Generate function
    @IBAction func generateButtonPressed(_ sender: UIButton) {
        
        var passwordCharSet = ""
        
        passwordDisplay.text = ""
        
        var passwordLength = Int(sliderLength.value)
        
        
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
        
        for i in 0..<Int(sliderLength.value){
            passwordDisplay.text += String(passwordCharSet.randomElement()!)
        }
        
       print(passwordCharSet)
    }
//    Copy function
    @IBAction func copyPassword(_ sender: UIButton) {
        let pasteboard = UIPasteboard.general
        pasteboard.string = passwordDisplay.text
    }
    
//    Update the length of the slider live
    @IBAction func updateSliderLength(_ sender: UISlider) {
        
        sliderLengthDisplay.text = String(format: "%.0f", sender.value)
          
      }
    
    
}


