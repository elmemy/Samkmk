//
//  TabBarView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/14/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    
    var body: some View {
        TabView() {
            HomeView()
                .tabItem {
                    Text("الرئيسية")
                    Image(systemName: "list.dash")
                    
            }.tag(1)
            MyOrdersView()
                .tabItem {
                    Text("طلباتي")
                    Image(systemName: "square.and.pencil")
            }.tag(1)
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
    }
}
