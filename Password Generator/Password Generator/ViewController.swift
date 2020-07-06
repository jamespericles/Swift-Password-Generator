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
//    Generate Button
    @IBOutlet weak var generateButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
//    Function to check to see if all switches are off. If so, disable the generate button to prevent a crash
    @IBAction func switchValueChanged(_ sender: UISwitch!){
        
      if  !lowercaseSwitch.isOn && !uppercaseSwitch.isOn && !numberSwitch.isOn && !specialSwitch.isOn{
        generateButton.isEnabled = false
      } else {generateButton.isEnabled = true
        
        }
    }
//     Generate function
    @IBAction func generateButtonPressed(_ sender: UIButton!) {
        
        var passwordCharSet = ""
//        Reset the passwordDisplay to be empty each time action is called
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


