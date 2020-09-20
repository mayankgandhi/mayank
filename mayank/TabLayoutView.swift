//
//  TabScreens.swift
//  CustomTabBar
//
//  Created by Mayank Gandhi on 9/13/20.
//  Copyright © 2020 Mayank Gandhi. All rights reserved.
//

import SwiftUI
import AVFoundation
import Photos
import UIKit

struct TabLayoutView:View {
    @State var selection:Int = 1
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0)  {
                
                TabView(selection: self.$selection)
                    .frame(width: geometry.size.width, height: geometry.size.height-90, alignment: .top)
                    .animation(.interactiveSpring())
                    .border(Color.green)
                
                TabBar(selection: self.$selection, geometry: geometry).frame(height: 90)
                    .animation(.interactiveSpring())
                    .border(Color.red)
            }
        }.edgesIgnoringSafeArea(.all)
        
    }
    
}

struct TabView :View    {
    
    @Binding var selection:Int
    
    var body: some View {
        ZStack{
            if selection == 1  {
                TabScreen1()
            } else if selection == 2  {
                TabScreen2()
            } else if selection == 3  {
                TabScreen3()
            } else if selection == 4  {
                TabScreen4()
            } else if selection == 5  {
                TabScreen5()
            }
        }
    }
    
}

struct TabBar: View {
    
    @Binding var selection:Int
    @State var geometry:GeometryProxy
    
    var body: some View {
        HStack(alignment: .center, spacing: 0){
            
            Button(action: {
                self.selection = 1
            }) {
                VStack(alignment: .center){
                    Image(systemName: "01.square.fill").TabBarIconStyle()
                    Text("Tab1").TabBarLabelTextStyle()
                }
            }
            .frame(width: geometry.size.width/5, height: 80, alignment: .center)
            
            Divider()
            
            Button(action: {
                self.selection = 2
            }) {
                VStack(alignment: .center){
                    Image(systemName: "02.square.fill").TabBarIconStyle()
                    Text("Tab2").TabBarLabelTextStyle()
                }
            }
            .frame(width: geometry.size.width/5, height: 80, alignment: .center)
            
            Divider()
            
            Button(action: {
                    self.selection = 3
            }) {
                VStack(alignment: .center){
                    Image(systemName: "03.square.fill").TabBarIconStyle()
                    Text("Tab3").TabBarLabelTextStyle()
                }
            }
            .frame(width: geometry.size.width/5, height: 80, alignment: .center)
            
            Divider()
            
            Button(action: {
                self.selection = 4
            }) {
                VStack(alignment: .center){
                    Image(systemName: "04.square.fill").TabBarIconStyle()
                    Text("Tab4").TabBarLabelTextStyle()
                }
            }
            .frame(width: geometry.size.width/5, height: 80, alignment: .center)
            
            Divider()
            
            Button(action: {
                self.selection = 5
            }) {
                VStack(alignment: .center){
                    Image(systemName: "05.square.fill").TabBarIconStyle()
                    Text("Tab5").TabBarLabelTextStyle()
                }
            }
            .frame(width: geometry.size.width/5, height: 80, alignment: .center)
        }
        .frame(width: geometry.size.width , height: 80, alignment: .center)
    }
}


extension Image {
    func TabBarIconStyle() -> some View {
        self
            .resizable()
            .scaledToFit()
            .frame(width: 25, height: 25, alignment: .center)
            .foregroundColor(.black)
    }
}

extension Text {
    func TabBarLabelTextStyle() -> some View {
        self
            .font(.system(size: 9))
            .foregroundColor(.black)
            .opacity(0)
    }
}

struct TabScreen1: View {
    var body: some View {
        VStack {
            Spacer()
            Text("TabScreen1")
            Spacer()
        }
    }
}
struct TabScreen2: View {
    var body: some View {
        VStack {
            Spacer()
            Text("TabScreen2")
            Spacer()
        }
    }
}
struct TabScreen3: View {
    var body: some View {
        VStack {
            Spacer()
            Text("TabScreen3")
            Spacer()
        }
    }
}
struct TabScreen4: View {
    var body: some View {
        VStack {
            Spacer()
            Text("TabScreen4")
            Spacer()
        }
    }
}
struct TabScreen5: View {
    var body: some View {
        VStack {
            Spacer()
            Text("TabScreen5")
            Spacer()
        }
    }
}

