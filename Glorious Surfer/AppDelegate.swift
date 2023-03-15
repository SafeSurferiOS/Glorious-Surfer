//
//  AppDelegate.swift
//  Glorious Surfer
//
//  Created by Brian Seo on 2023-03-15.
//

import SwiftUI
import FamilyControls

class AppDelegate: NSObject, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
//        AuthorizationCenter.shared.requestAuthorization { result in
//            switch result {
//            case .success:
//                break
//            case .failure(let error):
//                print("error for screentime is \(error)")
//            }
//        }
//
//        _ = AuthorizationCenter.shared.$authorizationStatus
//            .sink() {_ in
//            switch AuthorizationCenter.shared.authorizationStatus {
//            case .notDetermined:
//                print("not determined")
//            case .denied:
//                print("denied")
//            case .approved:
//                print("approved")
//            @unknown default:
//                break
//            }
//        }
        return true
    }
}
