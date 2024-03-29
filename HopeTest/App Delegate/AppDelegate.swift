//
//  AppDelegate.swift
//  HopeTest
//
//  Created by Sushma on 14/06/19.
//  Copyright © 2019 Fugenx. All rights reserved.
//

import UIKit
import ARKit
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
//        guard ARObjectScanningConfiguration.isSupported, ARWorldTrackingConfiguration.isSupported else {
//            fatalError("""
//                ARKit is not available on this device. For apps that require ARKit
//                for core functionality, use the `arkit` key in the key in the
//                `UIRequiredDeviceCapabilities` section of the Info.plist to prevent
//                the app from installing. (If the app can't be installed, this error
//                can't be triggered in a production scenario.)
//                In apps where AR is an additive feature, use `isSupported` to
//                determine whether to show UI for launching AR experiences.
//            """)
        
        
        return true
    }
    func application(_ application: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey: Any] = [:]) -> Bool {
        if let viewController = self.window?.rootViewController as? ViewController {
            //viewController.readFile(url)
            return true
        } else {
            return false
        }
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        if let viewController = self.window?.rootViewController as? ViewController {
            //viewController.backFromBackground()
        }
    }
    
    func applicationWillResignActive(_ application: UIApplication) {
        if let viewController = self.window?.rootViewController as? ViewController {
           // viewController.blurView?.isHidden = false
        }
    }
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        if let viewController = self.window?.rootViewController as? ViewController {
            //viewController.blurView?.isHidden = true
        }
    }
}
