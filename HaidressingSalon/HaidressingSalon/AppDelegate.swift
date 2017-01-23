//
//  AppDelegate.swift
//  HaidressingSalon
//
//  Created by AdminLWO on 19.01.17.
//  Copyright © 2017 ad. All rights reserved.
//

import UIKit
import RESideMenu

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, RESideMenuDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        let storyboard : UIStoryboard = UIStoryboard.init(name: "Main", bundle: nil)
//        let navVC : NavigationController = NavigationController.init()
//        instantiateViewController(withIdentifier: "navVC")
        let navVC : NavigationController = storyboard.instantiateViewController(withIdentifier: "navVC") as! NavigationController
        
        let leftVC : LeftViewController = storyboard.instantiateViewController(withIdentifier: "leftVC") as! LeftViewController
        
        let sideMenuVC : RESideMenu = RESideMenu.init(contentViewController: navVC, leftMenuViewController: leftVC, rightMenuViewController: nil)
        
        sideMenuVC.delegate = self

        window?.rootViewController = sideMenuVC
        
        sideMenuVC.presentLeftMenuViewController()
        
        
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

    //MARK: RESideMenu Delegate
    
    func sideMenu(_ sideMenu: RESideMenu!, willShowMenuViewController menuViewController: UIViewController!) {
        print("willShowMenuViewController: %@", menuViewController)
    }
    
    func sideMenu(_ sideMenu: RESideMenu!, didShowMenuViewController menuViewController: UIViewController!) {
        print("didShowMenuViewController: %@", menuViewController)
    }
    
    func sideMenu(_ sideMenu: RESideMenu!, willHideMenuViewController menuViewController: UIViewController!) {
        print("willHideMenuViewController: %@", menuViewController)
    }
    
    func sideMenu(_ sideMenu: RESideMenu!, didHideMenuViewController menuViewController: UIViewController!) {
        print("didHideMenuViewController: %@", menuViewController)
    }
}

