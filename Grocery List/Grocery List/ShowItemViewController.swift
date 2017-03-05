//
//  ShowItemViewController.swift
//  Grocery List
//
//  Created by Vaed Prasad on 3/4/17.
//  Copyright © 2017 Vaed Prasad. All rights reserved.
//

import UIKit

class ShowItemViewController: UIViewController {

    var passedGroceryItem: String!
    
    @IBOutlet weak var reminderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        reminderLabel.text = "Don't forget to buy \(passedGroceryItem!)"

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
