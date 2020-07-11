//
//  HomeView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/8/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Form{
                Section{
                    HeaderView()
                    SliderView()
                }
            }
        }
        .edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct HeaderView: View {
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("notificationsbutton")
            }
            .foregroundColor(ColorManager.MainColor)
            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("slidemenu")
            }
            .foregroundColor(ColorManager.MainColor)
                
            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topTrailing)
        }
    }
}

struct SliderView: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(1..<10){_ in
                    Image("onboard2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                }
            }
            
        }
    }
}
