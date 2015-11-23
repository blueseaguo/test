//
//  ViewController.swift
//  TestNews
//
//  Created by guo on 15/11/23.
//  Copyright © 2015年 guo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    lazy var tableview: UITableView = {
        let newTableView = UITableView(frame: self.view.frame, style: .Plain)
        newTableView.delegate = self
        newTableView.dataSource = self
        newTableView.backgroundColor = UIColor.redColor();
        newTableView.separatorStyle = .None
        newTableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return newTableView
        }()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.view.addSubview(self.tableview)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
// MARK: UITableViewDataSource
extension ViewController: UITableViewDataSource {
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableview.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) 
        cell.textLabel?.text = "dafafa"
        return cell
    }
    
}

// MARK: UITableViewDelegate
extension ViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
    }
    
    func scrollViewDidScroll(scrollView: UIScrollView) {
        
    }
    
}

