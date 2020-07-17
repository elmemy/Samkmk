//
//  ProdcutsView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/11/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct ProdcutsView: View {
    @State var name:String
    @State var products:[ProductModel] = []
    var body: some View {
        VStack{
            HStack {
                Text(name)
                    .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.titleSize)))
                    .fontWeight(.bold)
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .topLeading)
                    .foregroundColor(ColorManager.MainColor)
                Text("عرض الكل")
                    .font(.custom(FontManger.CairoRegular, size: CGFloat(FontManger.SmallSize)))
                    .frame(minWidth: 0, maxWidth: .infinity,alignment: .topTrailing)
                    .foregroundColor(.secondary)
                
            }
            .padding(.bottom, -20.0)
            
            
            ScrollView(.horizontal,showsIndicators: false){
                HStack {
                    ForEach(products){product in
                        ProductCell(product: product)
                    }
                }
            }
        }
    }
}


struct ProdcutsView_Previews: PreviewProvider {
    static var previews: some View {
        ProdcutsView(name: "الاكثر طلبا",products: testData)
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
        
    }
}
