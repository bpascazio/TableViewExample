//
//  ViewController.swift
//  TableViewExample
//
//  Created by Bob Pascazio on 8/24/15.
//  Copyright (c) 2015 Bob Pascazio. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource  {

    let things = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("numberOfRowsInSection was called")
        return things.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        println("cellForRowAtIndexPath was called")
        let cell = tableView.dequeueReusableCellWithIdentifier("cellIdentifier", forIndexPath: indexPath) as! UITableViewCell
        return cell
    }
}

