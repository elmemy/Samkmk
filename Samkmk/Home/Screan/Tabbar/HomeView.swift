//
//  HomeView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/8/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @State var product:[ProductModel] = []
    
    
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                
                VStack{
                    SliderCell()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 200)
                    HeaderView()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 12, alignment: .top)
                        .padding(.top, -150.0)
                        .padding([.leading, .trailing])
                    CategoriesView()
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120, alignment: .top)
                        .padding([.leading, .trailing])
                    ProdcutsView(name: "الاكثر طلبا", products: product)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120, alignment: .top)
                        .padding(.all)
                    ProdcutsView(name: "المضاف حديثا", products: product)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 120, alignment: .top)
                        .padding(.all)
                    .padding(.top,30)
                    Spacer()
                }
            }
            
        }.onAppear(perform: getData)
            .edgesIgnoringSafeArea(.all)
        
        
    }
    
    func getData(){
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
        product.append(ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(product:testData)
            .environment(\.locale, .init(identifier: "ar"))
            .environment(\.layoutDirection, .rightToLeft)
        
        
    }
}
