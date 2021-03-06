//
//  TaskDetailViewController.swift
//  Taskit
//
//  Created by Thomas on 10/7/14.
//  Copyright (c) 2014 Tom Brunkow. All rights reserved.
//

import UIKit

class TaskDetailViewController: UIViewController {
    
    @IBOutlet weak var taskTextField: UITextField!
    @IBOutlet weak var subtaskTextField: UITextField!
    @IBOutlet weak var dueDatePicker: UIDatePicker!
    @IBOutlet weak var publicPrivateSwitch: UISwitch!
    @IBOutlet weak var publicPrivateLabel: UILabel!
    
    
    var detailTaskModel: TaskModel!
    
    var mainVC: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.taskTextField.text = detailTaskModel.task
        self.subtaskTextField.text = detailTaskModel.subTask
        self.dueDatePicker.date = detailTaskModel.date
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func publicPrivateSwitch(sender: AnyObject) {
        
        if publicPrivateSwitch.on {
            publicPrivateLabel.text = "This task is private"
            detailTaskModel.isPrivate = true
            
        }
        else {
            publicPrivateLabel.text = "This task is public"
            detailTaskModel.isPrivate = false
        }
    }


    @IBAction func cancelButtonTapped(sender: UIBarButtonItem) {
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    
    @IBAction func doneBarButtonItemPressed(sender: UIBarButtonItem) {
        
        var task = TaskModel(task: taskTextField.text, subTask: subtaskTextField.text, date: dueDatePicker.date, completed: false, isPrivate: false)
        mainVC.baseArray[0][mainVC.tableView.indexPathForSelectedRow()!.row] = task
        
        self.navigationController?.popViewControllerAnimated(true)
        
    }
    

}
