//
//  NYDetailsViewController.swift
//  NYC
//
//  Created by Sibrian on 8/22/16.
//  Copyright © 2016 Sibrian. All rights reserved.
//

import UIKit

class NYDetailsViewController: UIViewController {
    
    @IBOutlet weak var historyLabel: UILabel!
    
    @IBAction func backButtonPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func landscapeBackButtonPressed(sender: UIButton) {
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyLabel.sizeToFit()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
