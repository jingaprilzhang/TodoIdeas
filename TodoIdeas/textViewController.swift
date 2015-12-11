//
//  textViewController.swift
//  TodoIdeas
//
//  Created by JING ZHANG on 11/30/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
//

import UIKit

class textViewController: UIViewController,UITextFieldDelegate, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var categoryPicker: UIPickerView!
    
    @IBOutlet weak var ideaTitle: UITextField!
    
    @IBOutlet weak var ideaContent: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    @IBAction func cancel(sender: AnyObject) {
//        self.navigationController!.dismissViewControllerAnimated(true, completion: nil)
        print("cancel")
        navigationController?.popViewControllerAnimated(true)
    }
    
    @IBAction func save(sender: AnyObject) {
        
        ideaMgr.addIdea(ideaTitle.text!, content: ideaContent.text);
        self.view.endEditing(true)
        ideaTitle.text = ""
        ideaContent.text = ""
    }
    
    //Mark UITextField Delegate
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder();
        return true
    }
    
    // MARK: - UIPickerView
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return 10
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return ""
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
