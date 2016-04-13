//
//  AppDelegate.swift
//  myControllers
//
//  Created by Praženica Andrej on 07/04/16.
//  Copyright © 2016 Praženica Andrej. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        
        let mainController = ViewController()
        let navigationController = UINavigationController(rootViewController: mainController)
        
        mainController.title = "Events"
        navigationController.tabBarItem = UITabBarItem(title: "Events", image: UIImage(named: "calendar"), tag: 0)
        
        
        UINavigationBar.appearance().translucent = false
        
        
        let messagesController = MessagesViewController()
        let messagesNavigationController = UINavigationController(rootViewController: messagesController)
        messagesController.title = "Messages"
        messagesNavigationController.tabBarItem = UITabBarItem(title: "Messages", image: UIImage(named: "message"), tag: 0)
        
        let friendsController = FriendsViewController()
        let friendsNavigationController = UINavigationController(rootViewController: friendsController)
        friendsController.title = "Friends"
        friendsNavigationController.tabBarItem = UITabBarItem(title: "Friends", image: UIImage(named: "usergroup"), tag: 0)
        
        let profileController = ProfileViewController()
        let profileNavigationController = UINavigationController(rootViewController: profileController)
        profileController.title = "Profile"
        profileNavigationController.tabBarItem = UITabBarItem(title: "Profile", image: UIImage(named: "contacts"), tag: 0)
        
        
        
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [navigationController, profileNavigationController    ]
        
        
        
        
        window = UIWindow(frame: UIScreen.mainScreen().bounds)
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

