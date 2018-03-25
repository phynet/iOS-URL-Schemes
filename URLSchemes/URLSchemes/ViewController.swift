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
        openSOSettings()
    }
    
    func openSettingsiOS9andless(){
        //This is how it works in iOS < 11
        UIApplication.shared.openURL(NSURL(string:"App-Prefs:root=General&path=Keyboard")! as URL)
    }
    
    func openSettingsApp(){
        if #available(iOS 10.0, *) {
            let settingsUrl = NSURL(string:UIApplicationOpenSettingsURLString)! as URL
            UIApplication.shared.open(settingsUrl, options: [:], completionHandler: nil)
        }
    }
    
    func openSOSettings(){
        if #available(iOS 10.0, *) {
            let url = NSURL(string:"App-prefs:root=General&path=Keyboard")! as URL
            UIApplication.shared.open(url)
        }
    }
    
    
    
    
}

