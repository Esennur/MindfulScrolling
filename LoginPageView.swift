//
//  LoginPageView.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 5/29/25.
//
import SwiftUI

struct LoginPageView: View{
    @State private var username: String = ""
    @State private var password: String = ""
    var body: some View {
        NavigationStack{
            ZStack {
                Image("Background1")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
                

                VStack {
                    Spacer() // Pushes login form down
                    
                    Image("LoginJellyfish")
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200) // adjust as needed
                        .padding(.bottom, 20) // optional spacing from top
                    
                    ZStack {
                        Rectangle()
                            .foregroundColor(Color(red: 76/255, green: 60/255, blue: 69/255))
                            .cornerRadius(15)
                            .frame(width: 300, height: 200)
                        
                        VStack(spacing: 10) {
                            
                            TextField("User name (email address)", text: $username)
                                .font(.custom("Cochin", fixedSize: 20))
                                .fontWeight(.bold)
                                .padding(10)
                                .background(Color.white)
                                .frame(width: 250, height: 40)
                                .multilineTextAlignment(.leading)
                            
                            TextField("Password", text: $password)
                                .font(.custom("Cochin", fixedSize: 20))
                                .fontWeight(.bold)
                                .padding(10)
                                .background(Color.white)
                                .frame(width: 250, height: 40)
                                .multilineTextAlignment(.leading)
                                .padding(.bottom, 15)
                            
                            NavigationLink(destination: HomePageView()) {
                                Text("Log in")
                                    .font(.custom("Cochin", fixedSize: 20))
                                    .fontWeight(.bold)
                                    .foregroundColor(.black)
                                    .padding()
                                    .background(Color.white)
                                    .cornerRadius(12)
                                    .shadow(radius: 5)
                            }
                        }
                    }
                    
                    VStack{
                        Text("Or")
                            .font(.custom("Cochin", fixedSize: 25))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }

                    VStack{
                        
                        NavigationLink(destination: HomePageView()) {
                            Text("Create an Account")
                                .font(.custom("Cochin", fixedSize: 25))
                                .fontWeight(.bold)
                                .foregroundColor(.black)
                                .padding()
                                .background(Color(red: 76/255, green: 60/255, blue: 69/255))
                                .cornerRadius(20)
                                .shadow(radius: 5)
                        }
                    }
                    
                    Spacer() // Optional — if you want spacing at the bottom too
                }
                .frame(maxHeight: .infinity)
                .padding()
                .offset(y: -30)
            }
        }}
}
