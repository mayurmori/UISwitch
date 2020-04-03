//
//  ViewController.swift
//  UISwitch
//
//  Created by Mayur Mori on 14/09/19.
//  Copyright © 2019 Mayur Mori. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOUTLET -
    @IBOutlet weak var lblSwitchState: UILabel!
    @IBOutlet weak var switchState: UISwitch!
    
    // MARK: - VIEW LIFE CYCLE METHODS -
    override func viewDidLoad() {
        super.viewDidLoad()
        switchState.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
    }
    
    // MARK: - IB ACTIONS -
    @IBAction func btnChangeState_Clicked(_ sender: UIButton) {
        if switchState.isOn {
            switchState.setOn(false, animated: true)
            lblSwitchState.text = "The Switch is Off"
        } else {
            switchState.setOn(true, animated: true)
            lblSwitchState.text = "The Switch is On"
        }
    }
    
    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            lblSwitchState.text = "The Switch is On"
        } else {
            lblSwitchState.text = "The Switch is Off"
        }
    }
}
