//
//  CategoriesView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/8/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct ImageOverlay: View {
    @State var nameCategory:String
    var body: some View {
        ZStack {
            Text(nameCategory)
                .padding(.all)
                .font(.custom(FontManger.CairoRegular, size: CGFloat(FontManger.SmallSize)))
                .foregroundColor(.white)
        }
    }
}

struct CategoriesView: View {
    var body: some View {
        VStack{
            HStack {
                Text("عرض الكل (12)")
                    .font(.custom(FontManger.CairoRegular, size: CGFloat(FontManger.SmallSize)))
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                    .foregroundColor(.secondary)
                Text("الأقسام")
                    .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .topTrailing)
                    .foregroundColor(ColorManager.MainColor)
            }
            
            
            ScrollView(.horizontal){
                CategoryCell()
            }
        }
    }
}

