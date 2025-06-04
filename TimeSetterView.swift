//
//  TimeSetterView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 6/1/25.
//

import SwiftUI

struct TimeSetterView: View {
    @EnvironmentObject var userInfo: UserInfo
    @State private var selectedApp: String = "Choose an app"
    @State private var selectedTime: Int = 5

    let timeOptions = [5, 10, 15, 30, 60]

    var body: some View {
        ZStack {
            Image("Background1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            
            VStack(spacing: 20) {
                // Header
                Image("LoginJellyfish")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 150)

                Text("Choose the App you want to use and set a time")
                    .font(.custom("Cochin", fixedSize: 27))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 20)

                Text("You will receive a reminder once your time is over!")
                    .font(.custom("Cochin", fixedSize: 20))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .padding(.horizontal, 20)
                
                // Center Box
                ZStack {
                    Image("TimeSetterBackground")
                        .resizable()
                        .frame(width: 430, height: 350)
                    
                    VStack(spacing: 30) {
                        // App Dropdown
                        Menu {
                            ForEach(Array(userInfo.selectedApps), id: \.self) { app in
                                Button(app) {
                                    selectedApp = app
                                }
                            }
                        } label: {
                            Label(selectedApp, systemImage: "chevron.down")
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }

                        // Time Dropdown
                        Menu {
                            ForEach(timeOptions, id: \.self) { time in
                                Button("\(time) min") {
                                    selectedTime = time
                                }
                            }
                        } label: {
                            Label("Reminder after: \(selectedTime) min", systemImage: "clock")
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                    }
                }

                Spacer()
            }
            .padding()
        }
    }
}
