//
//  AppDelegate.swift
//  TrainingiOSApp2023
//
//  Created by JumpeiYoshida on 2022/12/27.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
	
	var window: UIWindow?

	func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
		let window = UIWindow(frame: UIScreen.main.bounds)
		window.rootViewController = ViewController()
		self.window = window
		window.makeKeyAndVisible()
		return true
	}

}

