//
//  checkBoxVC.swift
//  Radio-Button
//
//  Created by Tipu on 15/6/23.
//

import UIKit

class checkBoxVC: UIViewController {
    @IBOutlet weak var buttonA: UIButton!
    
    @IBOutlet weak var buttonB: UIButton!
    
    @IBOutlet weak var buttonC: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Set initial button states
              setButtonState(buttonA, selected: false)
              setButtonState(buttonB, selected: false)
              setButtonState(buttonC, selected: false)
              
              // Add target actions to handle button tap events
              buttonA.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
              buttonB.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
              buttonC.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
          }
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        setButtonState(sender, selected: sender.isSelected)
    }

          func setButtonState(_ button: UIButton, selected: Bool) {
              let selectedImage = UIImage(named: "check-box")
              let unselectedImage = UIImage(named: "check-box-empty")
              
              button.setImage(selected ? selectedImage : unselectedImage, for: .normal)
          }

}
