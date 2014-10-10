//
//  AddTaskViewController.swift
//  Taskit
//
//  Created by Thomas on 10/7/14.
//  Copyright (c) 2014 Tom Brunkow. All rights reserved.
//

import UIKit

class AddTaskViewController: UIViewController {

    //Properties
    var mainVC: ViewController!
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func cancelButtonTapped(sender: UIButton) {
        
        //This time we are not w/i navigation stack 
        self.dismissViewControllerAnimated(true, completion: nil)
    }

    @IBAction func addTaskButtonTapped(sender: UIButton) {
        var task = TaskModel(task: taskTextField.text, subTask: subtaskTextField.text, date: dueDatePicker.date, completed: false)
            mainVC.baseArray[0].append(task)
            self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    
    
    
    
    
    
    
  }
