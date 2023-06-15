//
//  ViewController.swift
//  Radio-Button
//
//  Created by Tipu on 15/6/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var checkBoxContainer: UIView!
    
    @IBOutlet weak var radioButtonContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        radioButtonContainer.isHidden = true
    }

    @IBAction func segmentValueChange(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0: checkBoxContainer.isHidden = false
        case 1: checkBoxContainer.isHidden = true
        default: break
        }
        radioButtonContainer.isHidden = !checkBoxContainer.isHidden
    }
}
