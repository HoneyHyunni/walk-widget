//
//  SceneDelegate.swift
//  WalkWidget
//
//  Created by Sanghyun on 11/8/23.
//

import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        let rootView = MainView()
        
        if let windowScene = scene as? UIWindowScene {
            let window = UIWindow(windowScene: windowScene)
            window.rootViewController = UIHostingController(rootView: rootView)
            window.makeKeyAndVisible()
            self.window = window
        }
    }
    
    // MARK: Scene-based Lifecycle
    func sceneDidBecomeActive(_ scene: UIScene) { }
}
