//
//  ViewController.swift
//  JumpToNextItem
//
//  Created by Fly on 7/26/16.
//  Copyright © 2016 Fly. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var idTxt: UITextField!
    @IBOutlet weak var pwdTxt: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        pwdTxt.isSecureTextEntry = true
        idTxt.returnKeyType = .next
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.text! == "" {
            print("A")
            return false
        } else if textField == idTxt {
            textField.resignFirstResponder()
            pwdTxt.becomeFirstResponder()
            print("B")
            return true
        } else if textField == pwdTxt {
            print("C")
            textField.resignFirstResponder()
            return true
        }else {
            print("D")
            return false
        }
    }


}

