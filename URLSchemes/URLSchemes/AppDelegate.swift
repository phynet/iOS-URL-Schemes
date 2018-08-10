//
//  AppDelegate.swift
//  URLSchemes
//
//  Created by Sofía Swidarowicz Andrade on 17/5/16.
//  Copyright © 2016 Sofía Swidarowicz Andrade. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        settingAppVersion()
        return true
    }
    //This code adds bundle settings to the project
    func settingAppVersion() {
        let appVersionString = Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as? String
        let defaults = UserDefaults.standard
        defaults.setValue(appVersionString, forKey: "appVersion")
        defaults.synchronize()
    }
}



