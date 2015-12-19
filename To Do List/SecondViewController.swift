//
//  SecondViewController.swift
//  To Do List
//
//  Created by VIMLAN.G on 7/25/15.
//  Copyright (c) 2015 VIMLAN.G. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var textInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
    }

    @IBAction func buttonTapped(sender: AnyObject) {
        
        if(textInput.text != ""){
        toDoList.append(textInput.text)
        textInput.text = ""
        }
        
        NSUserDefaults.standardUserDefaults().setObject(toDoList, forKey: "toDoList")
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        self.view.endEditing(true)
    }
    
    func textFieldShouldReturn(textField:UITextField!) -> Bool{
        
        textInput.resignFirstResponder()
        return true
    }


}

