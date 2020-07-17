//
//  ProductModel.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/11/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import Foundation

struct ProductModel:Identifiable {
    var id = UUID()
    var name:String
    var image:String
    var price:String
    
    
}

let testData = [
    ProductModel(name: "جمبري جامبو", image: "romban", price: "السعر ١٢٠ ريال"),
    ProductModel(name: "سمك شبار", image: "romban", price: "السعر ٤٠ ريال"),
    ProductModel(name: "جمبري مشوي", image: "romban", price:"السعر ٢٠ ريال"),
    ProductModel(name: "سمك بوري", image: "romban", price: "السعر ٢٠ ريال"),

]
