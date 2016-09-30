//
//  AppDelegate.swift
//  iOS Swift Assessment Core Data
//
//  Created by Flatiron School on 8/1/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit
import CoreData

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var store = DataStore()
    
    var authors : [Author] = []

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        store.fetchData()
        
        print(store.authors.first?.books.first?.name)
        for author in store.authors
        {
            if let name = author.name
            {
                print("name:\(name)")
            }
            
            for books in author.books
            {
                if let book = books.name
                {
                    print("Books: \(book)")
                }
                
            }
            
        }
    
        //////////////
        return true // Don't touch this!
        //////////////
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        // Saves changes in the application's managed object context before the application terminates.
        store.saveContext()
    }

}

