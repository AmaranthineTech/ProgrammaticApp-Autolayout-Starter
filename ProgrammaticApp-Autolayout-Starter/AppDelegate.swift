//
//  AppDelegate.swift
//  ProgrammaticApp-Autolayout-Starter
//
//  Created by Arun Patwardhan on 07/08/19.
//  Copyright © 2019 Amaranthine. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    //reference to main view controller
    let mainScreenController    : ViewController            = ViewController()
    
    //reference to navigation controller
    let navigator               : UINavigationController    = UINavigationController()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //1. Create the window
        self.window                                     = UIWindow(frame: UIScreen.main.bounds)
        
        //2. Embedded the view controller in the navigation controller
        self.navigator.viewControllers.append(self.mainScreenController)
        
        //3. Customise the navigation controller
        self.navigator.navigationBar.barStyle           = UIBarStyle.black
        self.navigator.navigationBar.barTintColor       = UIColor.orange
        self.navigator.navigationBar.prefersLargeTitles = true
        
        //4. Set the root view controller
        self.window?.rootViewController                 = self.navigator
        
        //5. Make the window key and visible
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

