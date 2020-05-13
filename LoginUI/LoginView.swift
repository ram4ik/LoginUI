//
//  LoginView.swift
//  LoginUI
//
//  Created by Ramill Ibragimov on 13.05.2020.
//  Copyright © 2020 Ramill Ibragimov. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var check: Bool = false
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color("LightBlue"), Color("DarkBlue")]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            ScrollView {
                VStack {
                    VStack {
                        HStack {
                            Text("Sign In")
                                .font(.largeTitle)
                                .padding(70)
                        }
                        Group {
                            
                            HStack {
                                Text("Email")
                                Spacer()
                            }
                            TextField("Enter your Email", text: $email)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .shadow(radius: 5)
                                .padding(.bottom, 40)
                                
                            HStack {
                                Text("Password")
                                Spacer()
                            }
                            TextField("Enter your Password", text: $password)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .shadow(radius: 5)
                                
                            HStack {
                                Spacer()
                                Text("Forgot Password?")
                                    
                            }
                            HStack {
                                Button(action: {
                                    self.check.toggle()
                                }) {
                                    Image(systemName: self.check ? "checkmark.square" : "square")
                                }
                                Text("Remember me")
                                Spacer()
                            }
                        }
                        Group {
                            Button(action: {
                                
                            }) {
                                Text("LOGIN")
                                    .font(.title)
                                    .padding(.horizontal, 80)
                                    .padding()
                                    .foregroundColor(Color("DarkBlue"))
                                    .background(Color.white)
                                    .cornerRadius(25)
                            }.shadow(radius: 5)
                            HStack {
                                Text("- OR -")
                            }.padding()
                            HStack {
                                Text("Sign in with")
                            }.padding()
                        }.padding()
                        HStack {
                            Spacer()
                            Button(action: {
                                
                            }) {
                                ZStack {
                                    Image("facebook")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 100, height: 80)
                                }
                                    
                            }.frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            Spacer()
                            Button(action: {
                                
                            }) {
                                ZStack {
                                    Image("google")
                                        .renderingMode(.original)
                                        .resizable()
                                        .frame(width: 100, height: 80)
                                }
                                    
                            }.frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .shadow(radius: 5)
                            Spacer()
                        }
                        HStack {
                            HStack {
                                Text("Don't have an Account?")
                                Text("Sign Up")
                                    .bold()
                            }
                        }
                    }
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                }
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
