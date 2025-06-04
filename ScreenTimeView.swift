//
//  ScreenTimeView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 6/1/25.
//

import SwiftUI

struct ScreenTimeView: View{
    
    var body: some View{
        
        ZStack{
            Image("Background2")
                .resizable()
                .scaledToFill()
                .edgesIgnoringSafeArea(.all)
            
            VStack{

                Text("Your daily screen time stats for chosen apps")
                    .font(.custom("Cochin", fixedSize: 25))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Image("ScreenTimeChart")
                    .resizable()
                    .frame(width: 350, height: 250)
                
                Divider()
                    .frame(width: 10, height: 20) // makes it thicker
                HStack{
                    Text("Your mindfulness score: ")
                        .font(.custom("Cochin", fixedSize: 25))
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    VStack{
                        Image("SadFace")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("%35")
                    }
                    
                }
                
            
            }
            .padding()
        }
    }
    
}
