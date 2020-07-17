//
//  MyOrderCell.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/17/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct MyOrderCell: View {
    var body: some View {
        ForEach(0 ..< 5) { item in
            HStack {
                VStack {
                    Text("رقم الطلب : ٤٤٠٢٩٣٩٣")
                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                        .fontWeight(.semibold)
                        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                        .padding(.bottom,3)
                    HStack{
                        Text("21/1/1994")
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                            .fontWeight(.regular)
                            .foregroundColor(.secondary)
                        
                        Text("9:30 AM")
                            .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                            .fontWeight(.regular)
                            .foregroundColor(.secondary)
                        
                    }
                    .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
                    
                }
                
                
                HStack{
                    Text("الاجمالي:")
                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                        .fontWeight(.regular)
                    
                    Text("20 ريال")
                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.SmallSize)))
                        .fontWeight(.regular)
                        .foregroundColor(ColorManager.MainColor)
                    
                }
                
            }
            .background(ColorManager.Gray)
            .cornerRadius(10)
        }
    }
}

struct MyOrderCell_Previews: PreviewProvider {
    static var previews: some View {
        MyOrderCell()
    }
}
