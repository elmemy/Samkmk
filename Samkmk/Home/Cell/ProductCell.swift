//
//  ProductCell.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/11/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct ProductCell: View {
    @State var product:ProductModel
    
    var body: some View {
        NavigationLink(destination: ProductDetailsView()) {
            
            HStack() {
                
                Image(product.image)
                    .resizable()
                    .cornerRadius(20.0)
                    .frame(width: 100, height:100, alignment: .leading)
                    .aspectRatio(contentMode: .fill)
                
                VStack{
                    Text(product.name)
                        .font(.custom(FontManger.CairoRegular, size: CGFloat(FontManger.titleSize)))
                        .multilineTextAlignment(.trailing)
                    
                    Text(product.price)
                        .font(.custom(FontManger.CairoRegular, size: CGFloat(FontManger.SmallSize)))
                        .multilineTextAlignment(.trailing)
                    HStack{
                        Image("starrateproducticonon")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Image("starrateproducticonon")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Image("ratestaroff")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Image("ratestaroff")
                            .resizable()
                            .frame(width: 20, height: 20)
                        Image("ratestaroff")
                            .resizable()
                            .frame(width: 20, height: 20)
                    }
                    .padding(.bottom)
                    
                }
                
                
                
            }
        }
        .buttonStyle(PlainButtonStyle())
        
    }
    
}

struct ProductCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCell(product: testData[0])
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
        
    }
}
