//
//  DaftarSenyuman.swift
//  senyum
//
//  Created by nevda on 13/6/15.
//  Copyright (c) 2015 com.deehan. All rights reserved.
//

import Foundation
import UIKit

class DaftarSenyumanViewController : UIViewController, UITableViewDataSource, UITableViewDelegate{
    
    @IBOutlet weak var tableView: UITableView!
    
    var senyumans = ["😀", "😵", "😄", "😈"]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.senyumans.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = UITableViewCell()
        
        cell.textLabel!.text = self.senyumans[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.performSegueWithIdentifier("tableViewEmojiSague", sender: self)
    }
    
}
