//
//  MindfulScrollingApp.swift
//  MindfulScrolling
//
//  Created by Ayesha Mahmood on 5/22/25.
//

import SwiftUI

@main
struct MindfulScrollingApp: App {
    @StateObject var userInfo = UserInfo()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(userInfo)
        }
    }
}
