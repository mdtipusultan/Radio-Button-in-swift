//
//  RadioButtonVC.swift
//  Radio-Button
//
//  Created by Tipu on 15/6/23.
//

import UIKit

class RadioButtonVC: UIViewController {
    
    @IBOutlet weak var buttonOne: UIButton!
    
    @IBOutlet weak var buttonTwo: UIButton!
    
    @IBOutlet weak var buttonThree: UIButton!
    
    
    
    var selectedButton: UIButton? // To keep track of the currently selected button
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            // Set initial button states
            setButtonState(buttonOne, selected: false)
            setButtonState(buttonTwo, selected: false)
            setButtonState(buttonThree, selected: false)
            
            // Add target actions to handle button tap events
            buttonOne.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            buttonTwo.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
            buttonThree.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        }
        
        @objc func buttonTapped(_ sender: UIButton) {
            selectButton(sender)
        }
        
        func selectButton(_ button: UIButton) {
            // Deselect the currently selected button (if any)
            selectedButton?.isSelected = false
            setButtonState(selectedButton, selected: false)
            
            // Select the tapped button
            button.isSelected = true
            setButtonState(button, selected: true)
            
            // Update the selectedButton variable
            selectedButton = button
        }
        
        func setButtonState(_ button: UIButton?, selected: Bool) {
            guard let button = button else {
                return
            }
            
            let selectedImage = UIImage(named: "check-box")
            let unselectedImage = UIImage(named: "check-box-empty")
            
            button.setImage(selected ? selectedImage : unselectedImage, for: .normal)
        }
    
    
}
