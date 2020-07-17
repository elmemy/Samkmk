//
//  HeaderView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/8/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//


import SwiftUI
struct HeaderView: View {
    var body: some View {
        HStack{
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("slidemenu")
            }
            .foregroundColor(ColorManager.MainColor)
            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image("notificationsbutton")
            }
            .foregroundColor(ColorManager.MainColor)
            .frame(minWidth: 0, maxWidth: .infinity,alignment: .topTrailing)
        }
    }
}


struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
    }
}
