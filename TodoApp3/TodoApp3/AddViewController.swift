//
//  AddViewController.swift
//  TodoApp2
//
//  Created by Mike Kostek on 10/1/14.
//  Copyright (c) 2014 UB. All rights reserved.
//

import UIKit

class AddViewController: UIViewController {

    @IBOutlet var titleTextField: UITextField! = UITextField()
    
    @IBOutlet var notesTextView: UITextView! = UITextView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func addButtonTapped(sender: AnyObject) {
        println("Button Tapped")
        var dataSet:NSMutableDictionary  = NSMutableDictionary()
        dataSet.setObject(titleTextField.text, forKey: "itemTitle")
        dataSet.setObject(notesTextView.text, forKey: "itemNote")
        
    }
}
