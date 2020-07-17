//
//  CategoryCell.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/9/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct CategoryCell: View {
    @State var name:String
    var body: some View {
        NavigationLink(destination: ProductDetailsView()) {
            VStack {
                Image("romban")
                    .resizable()
                    .opacity(0.4)
                    .overlay(ImageOverlay(nameCategory:self.name), alignment: .center)
                    .background(Color.black)
                    .cornerRadius(20.0)
                    .frame(width: 150, height:80, alignment: .leading)
                    .aspectRatio(contentMode: .fill)
                
                
            }
            
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct CategoryCell_Previews: PreviewProvider {
    static var previews: some View {
        CategoryCell(name: "روبيان")
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
    }
}
