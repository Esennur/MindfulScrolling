//
//  SimulatorView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 6/1/25.
//

import SwiftUI

struct SimulatorView: View {
    @State private var showPopup = false
    @State private var navigateNext = false
        
    var body: some View {
        NavigationView {
            ZStack {
                Image("IphoneHomePage")
                    .resizable()
                    .scaledToFill()
                    .onTapGesture {
                        showPopup = true
                    }
                
                NavigationLink(destination: TimeSetterView(), isActive: $navigateNext) {
                    EmptyView()
                }
                
                if showPopup {
                    // Semi-transparent background overlay
                    Color.black.opacity(0.4)
                        .edgesIgnoringSafeArea(.all)
                        .onTapGesture {
                            // Prevent taps behind the popup
                        }
                    
                    // Popup content
                    VStack(spacing: 20) {
                        Text("Do you want to scroll mindfully this time?")
                            .font(.headline)
                            .multilineTextAlignment(.center)
                            .padding()
                        
                        HStack(spacing: 40) {
                            Button("Accept") {
                                showPopup = false
                                navigateNext = true
                            }
                            .padding()
                            .background(Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                            
                            Button("Close") {
                                showPopup = false
                            }
                            .padding()
                            .background(Color.gray)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                        }
                    }
                    .frame(width: 300)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(12)
                    .shadow(radius: 10)
                }
            }
            
        }
        }
    }
