//
//  ViewController.swift
//  URLSchemes
//
//  Created by Sofía Swidarowicz Andrade on 17/5/16.
//  Copyright © 2016 Sofía Swidarowicz Andrade. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button: NSLayoutConstraint!
    override func viewDidLoad() {
        super.viewDidLoad()
        button.accessibilityLabel = "buttonTesting"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func openSchemes(_ sender: AnyObject) {
        UIApplication.shared.openURL(NSURL(string:"App-Prefs:root=General&path=Keyboard")! as URL)
    }
    
    
}

