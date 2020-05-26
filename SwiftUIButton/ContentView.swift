//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Manjit on 26/05/2020.
//  Copyright © 2020 SwiftUIButton. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack{
            VStack(spacing:10){
                VStack(spacing:10) {
                    Text("Swift button")
                    Button(action: {
                        print("button click")
                    }){
                       Text("Click Me")
                        }.padding().background(Color.red).cornerRadius(10)
                }
                VStack(spacing:10) {
                    Text("Button with icon and text")
                    Button(action: {
                        print("button click")
                    }){
                        Image(systemName: "bookmark.fill").resizable().frame(width: 20, height: 20)
                       Text("Click Me")
                    }.padding().background(Color.red).cornerRadius(10)
                }
                VStack(spacing:10) {
                              Text("Button with icon")
                              Button(action: {
                                  print("button click")
                              }){
                                  Image(systemName: "bookmark.fill").resizable().frame(width: 20, height: 20)
                                  }.padding().background(Color.red).cornerRadius(10)
                          }
                VStack(spacing:10) {
                    Text("Button with border")
                    Button(action: {
                        print("button click")
                    }){
                        Text("Button border")
                        Image(systemName: "bookmark.fill").resizable().frame(width: 20, height: 20)
                    }.padding().cornerRadius(10).border(Color.white, width: 4)
                }.padding(10)
                
                VStack(spacing:10) {
                                Text("Button cornraius & border")
                                Button(action: {
                                    print("button click")
                                }){
                                    Text("Button border")
                                    Image(systemName: "bookmark.fill").resizable().frame(width: 20, height: 20)
                                }.padding().overlay(RoundedRectangle(cornerRadius: 10.0)
                                .stroke(lineWidth: 2.0))
                            }.padding(10)
                
                
                VStack(spacing:10) {
                    Text("Buttonconfigurtion")
                    Button(action: {
                        print("button click")
                    }){
                        HStack{
                            Text("Button border")
                            Image(systemName:"bookmark.fill")
                        }
                    }.buttonStyle(GradientButtonStyle())
                }.padding(10)
                
            }.background(Color.green)
        }
    }
}
struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .foregroundColor(Color.white)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color.red, Color.orange]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(15.0)
            .scaleEffect(configuration.isPressed ? 1.3 : 1.0)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
