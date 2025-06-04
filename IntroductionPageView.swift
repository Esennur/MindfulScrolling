//
//  IntroductionPageView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 5/29/25.
//

import SwiftUI

struct IntroductionPageView: View{
    var body: some View{
        NavigationStack{
            ZStack{
                Image("Background1")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                VStack{
                    Text("Welcome to Mindful Scrolling")
                        .font(.custom("Cochin", fixedSize: 45))
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .padding(.bottom, 60)
                        .multilineTextAlignment(.center)
                    
                    Text("The app that lets you be loyal to your screentime goals")
                        .font(.custom("Cochin", fixedSize: 20))
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 120)
                    
                    NavigationLink(destination: LoginPageView())
                    {
                        Text("Start now")
                            .font(.custom("Cochin", fixedSize: 20))
                            .foregroundColor(.black)
                    }
                    .buttonStyle(.bordered)
                    
                    Image("BWJellyFish")
                        .resizable()
                        .frame(width: 300, height: 300)
                
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .padding(.top, 150) // Pushes content down from the top
                .padding(.horizontal)
            }
            
    }}
}
