//
//  TwitterSwiftUIApp.swift
//  TwitterSwiftUI
//
//  Created by 정회승 on 2023/07/23.
//

import SwiftUI
import FirebaseCore

@main
struct TwitterSwiftUIApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    class AppDelegate: NSObject, UIApplicationDelegate {
      func application(_ application: UIApplication,
                       didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        return true
      }
    }
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    var body: some Scene {
        WindowGroup {
            NavigationStack{
                ContentView()        
            }
            .environmentObject(viewModel)
        }
    }
}
