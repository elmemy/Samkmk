//
//  ProductDetailsView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/11/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct ProductDetailsView: View {
    var body: some View {
        Text("Hello, World!")
    }
}

struct ProductDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            ProductDetailsView()
                .environment(\.locale, .init(identifier: "ar"))
                .environment(\.layoutDirection, .rightToLeft)
        }
    }
}
