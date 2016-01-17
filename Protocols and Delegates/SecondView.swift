//
//  SecondView.swift
//  Protocols and Delegates
//
//  Created by Nivardo Ibarra on 11/12/15.
//  Copyright © 2015 Nivardo Ibarra. All rights reserved.
//

import UIKit

protocol dataDelegate {
    func setInformation(info:String)
}

class SecondView: UIViewController {

    @IBOutlet weak var txtfDataInput: UITextField!

    var delegate: dataDelegate? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
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
    
    @IBAction func btnSendData(sender: AnyObject) {
        if delegate != nil {
//            print("Test :)")
            let information:String = txtfDataInput.text!
            delegate!.setInformation(information)
//            self.navigationController?.popViewControllerAnimated(true)
        }
    }

}
