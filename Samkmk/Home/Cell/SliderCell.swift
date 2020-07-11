//
//  SliderView.swift
//  Samkmk
//
//  Created by ahmed elmemy on 7/8/20.
//  Copyright © 2020 ElMeMy. All rights reserved.
//

import SwiftUI

struct SliderCell: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack {
                ForEach(1..<10){_ in
                    Image("Slider")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .scaledToFit()
                }
            }
        }
        
    }
}
