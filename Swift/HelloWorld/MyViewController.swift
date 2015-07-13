//
//  MyViewController.swift
//  HelloWorld
//
//  Created by d on 2015/07/13.
//  Copyright (c) 2015年 d. All rights reserved.
//

import UIKit

class MyViewController : UIViewController {
    
    @IBOutlet weak var textField : UITextField?
    @IBOutlet weak var label : UILabel?
    var string : String?
    
    override func viewDidLoad() {
        self.textField?.clearButtonMode = UITextFieldViewMode.WhileEditing
        self.label?.text = self.textField?.placeholder
    }
    
    func updateString() {
        self.string = self.textField?.text
        self.label?.text = self.string
    }
    
    func textFieldShouldReturn(theTextField : UITextField) -> Bool {
        if theTextField == self.textField {
            self.textField?.resignFirstResponder()
            self.updateString()
        }
        return true
    }
    
    override func touchesBegan(touches : Set<NSObject>, withEvent event : UIEvent) {
        self.textField?.resignFirstResponder()
        self.textField?.text = self.string
        super.touchesBegan(touches as Set<NSObject>, withEvent:event)
    }
}