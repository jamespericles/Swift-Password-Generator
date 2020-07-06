//
//  ViewController.swift
//  Password Generator
//
//  Created by James Pericles II on 7/5/20.
//  Copyright © 2020 James Pericles II. All rights reserved.
//

import UIKit
import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, World!")
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
        
        
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func lowercaseCharacterSwitch(_ sender: UISwitch) {
    }
    
    
    @IBAction func uppercaseCharacterSwitch(_ sender: UISwitch) {
    }
    
    
    @IBAction func numberSwitch(_ sender: UISwitch) {
    }

    
    @IBAction func specialCharacterSwitch(_ sender: UISwitch) {
    }
    
    
    @IBAction func passwordLengthSlider(_ sender: UISlider) {
    }
    
    
    @IBAction func generateButton(_ sender: UIButton) {
    }
    
    
    @IBAction func copyButton(_ sender: UIButton) {
    }
}

