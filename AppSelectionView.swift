//
//  AppSelectionView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 6/1/25.
//

import SwiftUI

struct AppSelectionView: View{
    
    @EnvironmentObject var userInfo: UserInfo
    
    var body: some View{
        
        ZStack{
            
            Image("Background3")
                .resizable()
                .scaledToFill()
            
            VStack{
                Text("Choose the Apps you want to use more mindfully")
                    .font(.custom("Cochin", fixedSize: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding()
                
                HStack{
                    Button(action: {
                        if userInfo.selectedApps.contains("Instagram") {
                            userInfo.selectedApps.remove("Instagram")
                        } else {
                            userInfo.selectedApps.insert("Instagram")
                        }
                    }) {
                        VStack {
                            Image("Instagram") // Add this to your assets
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(userInfo.selectedApps.contains("Instagram") ? Color.white : Color.clear, lineWidth: 3)
                                )
                        }
                    }
                    
                    Button(action: {
                        if userInfo.selectedApps.contains("TikTok") {
                            userInfo.selectedApps.remove("TikTok")
                        } else {
                            userInfo.selectedApps.insert("TikTok")
                        }
                    }) {
                        VStack {
                            Image("TikTok") // Add this to your assets
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 115, height: 100)
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(userInfo.selectedApps.contains("TikTok") ? Color.white : Color.clear, lineWidth: 3)
                                )
                        }
                    }
                    
                }
                .padding()
                
                HStack{
                    
                    Button(action: {
                        if userInfo.selectedApps.contains("YouTube") {
                            userInfo.selectedApps.remove("YouTube")
                        } else {
                            userInfo.selectedApps.insert("YouTube")
                        }
                    }) {
                        VStack {
                            Image("YouTube") // Add this to your assets
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(userInfo.selectedApps.contains("YouTube") ? Color.white : Color.clear, lineWidth: 3)
                                )
                        }
                    }
                    Button(action: {
                        if userInfo.selectedApps.contains("Twitter") {
                            userInfo.selectedApps.remove("Twitter")
                        } else {
                            userInfo.selectedApps.insert("Twitter")
                        }
                    }) {
                        VStack {
                            Image("Twitter") // Add this to your assets
                                .resizable()
                                .frame(width: 100, height: 100)
                                .cornerRadius(25)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(userInfo.selectedApps.contains("Twitter") ? Color.white : Color.clear, lineWidth: 3)
                                )
                        }
                    }
                }
                .padding()
                
                HStack{
                    Button(action: {
                        if userInfo.selectedApps.contains("Threads") {
                            userInfo.selectedApps.remove("Threads")
                        } else {
                            userInfo.selectedApps.insert("Threads")
                        }
                    }) {
                        VStack {
                            Image("Threads") // Add this to your assets
                                .resizable()
                                .frame(width: 100, height: 100)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(userInfo.selectedApps.contains("Threads") ? Color.white : Color.clear, lineWidth: 3)
                                )
                        }
                    }
                    
                    Button(action: {
                        if userInfo.selectedApps.contains("Pinterest") {
                            userInfo.selectedApps.remove("Pinterest")
                        } else {
                            userInfo.selectedApps.insert("Pinterest")
                        }
                    }) {
                        VStack {
                            Image("Pinterest") // Add this to your assets
                                .resizable()
                                .frame(width: 100, height: 100)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 16)
                                        .stroke(userInfo.selectedApps.contains("Pinterest") ? Color.white : Color.clear, lineWidth: 3)
                                )
                        }
                    }
                }
            }
        }
    }
}
    
