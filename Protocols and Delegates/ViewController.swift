//
//  ViewController.swift
//  Protocols and Delegates
//
//  Created by Nivardo Ibarra on 11/12/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import UIKit

class ViewController: UIViewController, dataDelegate {

    @IBOutlet weak var lblData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "SecondView" {
            let secondView:SecondView = segue.destinationViewController as! SecondView
            secondView.delegate = self
        }
    }

    func setInformation(info: String) {
        lblData.text = info
    }

}

