//
//  ViewController.swift
//  Web Content
//
//  Created by Nathanial L. McConnell on 9/19/14.
//  Copyright (c) 2014 Nathanial L. McConnell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var url = NSURL(string: "http://www.stackoverflow.com")
    
    let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
      println(NSString(data: data, encoding: NSUTF8StringEncoding))
      
    }
    task.resume()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

