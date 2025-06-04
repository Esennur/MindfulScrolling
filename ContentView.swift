//
//  ContentView.swift
//  MindfulScrolling
//
//  Created by Ayesha Mahmood on 5/22/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        IntroductionPageView()
    }
}

#Preview {
    ContentView()
        .environmentObject(UserInfo())
}
