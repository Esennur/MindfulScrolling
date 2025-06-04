//
//  HomePageView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 5/29/25.
//

import SwiftUI

struct HomePageView: View{
    
    var body: some View{
        TabView {
            AppSelectionView()
                .tabItem {
                    Label("Home", systemImage: "person")
                }

            ScreenTimeView()
               .tabItem {
                    Label("Stats", systemImage: "chart.bar")
                }
            
//            PetJellyFishView()
//                .tabItem {
//                    Label("Pet", systemImage: "paw")
//                }
             TimeSetterView()
                .tabItem {
                    Label("Timer", systemImage: "clock")
                }
             SimulatorView()
                .tabItem{
                    Label("Simulator", systemImage: "phone")
                }
        }
    }
}
