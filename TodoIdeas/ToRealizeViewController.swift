//
//  ToRealizeViewController.swift
//  TodoIdeas
//
//  Created by JING ZHANG on 12/8/15.
//  Copyright © 2015 JING ZHANG. All rights reserved.
//

import UIKit

class ToRealizeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tblideas: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

   
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(animated: Bool) {
        tblideas.reloadData();
        
    }
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return ideaMgr.ideas.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell: UITableViewCell = UITableViewCell(style: .Subtitle, reuseIdentifier: "")
        
        cell.textLabel?.text = ideaMgr.ideas[indexPath.row].title
        
        cell.detailTextLabel?.text = ideaMgr.ideas[indexPath.row].content
        
        return cell
    }
    
    func tableView(tableView: UITableView!, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowIndexPath indexPath: NSIndexPath!) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete){
            print("Delete this row")
    }
        
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
