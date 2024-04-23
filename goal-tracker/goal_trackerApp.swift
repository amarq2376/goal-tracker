//
//  goal_trackerApp.swift
//  goal-tracker
//
//  Created by Alex Marquez on 3/8/24.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate, UNUserNotificationCenterDelegate {
    let startTime = Date()
    func registerForNotifications() {
        UNUserNotificationCenter.current()
            .requestAuthorization(options: [.alert, .sound, .badge]) {
                granted, error in
                print("Permission granted: \(granted)")
            }
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        completionHandler([.banner, .sound])
    }
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        //    let providerFactory = AppCheckDebugProviderFactory()
        //    AppCheck.setAppCheckProviderFactory(providerFactory)
        FirebaseApp.configure()
        registerForNotifications()
        return true
    }
    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        let endTime = Date().timeIntervalSince(startTime)
        print("This is the time interval of opening the app to closing the app in seconds:")
        print(endTime)
    }
}

@main
struct goal_trackerApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

//// MARK: Connect the app delegate to the SwiftUI app lifecycle
//@main
//struct AlertPushNotificationsApp: App {
//    // Step 4. Connect the `AppDelegate` class to the SwiftUI app’s lifecycle
//    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
//
//    var body: some Scene {
//        WindowGroup {
//            ContentView()
//        }
//    }
//}
