//
//  ViewController.swift
//  Grocery List
//
//  Created by Vaed Prasad on 3/4/17.
//  Copyright © 2017 Vaed Prasad. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var groceryList = ["bananas", "milk", "cheeseburger", "cake", "cookies", "lettuce", "icecream", "eggs"]
    var itemToPass:String!
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        tableView.dataSource = self
        tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groceryList.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        cell.textLabel?.text = groceryList[indexPath.row]
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        itemToPass = groceryList[indexPath.row]
        performSegueWithIdentifier("segue", sender: nil)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "segue" {
            let nextVC = segue.destinationViewController as!
                ShowItemViewController
            nextVC.passedGroceryItem = itemToPass
            
        }
    }
}

