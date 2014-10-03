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
        
        var userDefaults:NSUserDefaults = NSUserDefaults.standardUserDefaults()
        
        var itemList:NSMutableArray? = userDefaults.objectForKey("itemList") as? NSMutableArray //optional variable, app doesn't crash if there is no value for the key
        
        if (itemList){ //data already avaialable
        
            
            
            //TODO part2 video 17:45
            
            
            
        }
        else { //this is the first todo item in the list
            userDefaults.removeObjectForKey("itemList") //not necessary, used as a safety check
            itemList = NSMutableArray()
            itemList!.addObject(dataSet) //unwrap the array by using the !, unwrap it and add an object
            userDefaults.setObject(itemList, forKey: "itemList")
        }
        
        var dataSet:NSMutableDictionary  = NSMutableDictionary()
        dataSet.setObject(titleTextField.text, forKey: "itemTitle")
        dataSet.setObject(notesTextView.text, forKey: "itemNote")
        
    }
}
