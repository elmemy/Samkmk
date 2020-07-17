//
//  MyOrdersView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/14/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct MyOrdersView: View {
    
    var body: some View {
        NavigationView{
            ColorManager.SecondaryColor
                .edgesIgnoringSafeArea(.all)
                .overlay(
                    VStack{
                        HeaderView()
                            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 12, alignment: .top)
                            .padding()
                        
                        VStack{
                            HStack{
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Text("قيد الموافقة")
                                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                                    
                                }
                                .padding()
                                .foregroundColor(Color.black)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Text("تحت التفيذ")
                                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                                }
                                .padding()
                                .foregroundColor(Color.black)
                                
                                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                                    Text("منتهية")
                                        .font(.custom(FontManger.CairoBold, size: CGFloat(FontManger.BigSize)))
                                }
                                .padding()
                                .foregroundColor(Color.black)
                                
                            }
                            .frame(minWidth: 0, maxWidth: .infinity, alignment: .top)
                            
                            List{
                                MyOrderCell()
                            }
                            .padding(.bottom,20)
                        }
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .top)
                        .background(Color.white)
                        .cornerRadius(30)
                        
                        Spacer()
                    }
            )}
            
            .edgesIgnoringSafeArea(.all)
    }
    
    
}

struct MyOrdersView_Previews: PreviewProvider {
    static var previews: some View {
        MyOrdersView()
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
        
    }
}
