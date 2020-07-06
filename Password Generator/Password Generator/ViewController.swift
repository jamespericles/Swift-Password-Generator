import UIKit

class ViewController: UIViewController {
    
    
   @IBOutlet weak var lowercaseSwitch: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func generateButtonPressed(_ sender: UIButton) {
        lowercaseSwitch.isOn
      
        print("button pressed")
        
    }
    
    
    
}


