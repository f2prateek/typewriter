//
//  AppDelegate.swift
//  TypewriterSwiftExample
//
//  Created by Colin King on 7/9/19.
//  Copyright © 2019 Colin King. All rights reserved.
//

import UIKit
import Analytics

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        SEGAnalytics.debug(true)
        
        let configuration: SEGAnalyticsConfiguration = SEGAnalyticsConfiguration.init(writeKey: "123456")
        configuration.trackApplicationLifecycleEvents = false
        configuration.flushAt = 999
        
        configuration.requestFactory = { (url: URL) -> NSMutableURLRequest in
            let components = NSURLComponents.init(url: url, resolvingAgainstBaseURL: false)
            if components == nil {
                return NSMutableURLRequest.init(url: url)
            }
            components!.scheme = "http"
            components!.host = "localhost"
            components!.port = 8765
            return NSMutableURLRequest.init(url: components!.url!)
        }
        
        SEGAnalytics.setup(with: configuration)
        
        return true
    }
}
