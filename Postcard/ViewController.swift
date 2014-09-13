//
//  ViewController.swift
//  Postcard
//
//  Created by David on 9/10/14.
//  Copyright (c) 2014 Manyfold. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet var enterNameTextField: UITextField!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var enterMessageTextField: UITextField!
    @IBOutlet var nameLabel: UILabel!

    @IBOutlet var mailButton: UIButton!

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        // adding a comment to test commits
        messageLabel.hidden = false
        messageLabel.text = enterMessageTextField.text
        enterMessageTextField.text = ""
        enterMessageTextField.resignFirstResponder()
        messageLabel.textColor = UIColor.redColor()
        mailButton.setTitle("Mail Sent", forState:UIControlState.Normal)
    
        nameLabel.textColor = UIColor.blueColor()
        nameLabel.text = enterNameTextField.text
        nameLabel.hidden = false
        enterNameTextField.text = ""
    }

}

