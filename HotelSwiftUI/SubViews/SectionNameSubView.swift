//
//  SectionNameSubView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 21.12.2023.
//

import Foundation
import SwiftUI

struct SectionNameSubView: View {
    
    let width: CGFloat
    let alignment = Alignment.topLeading
    let headlineName: String
    
    var body: some View {
        VStack {
            Text(headlineName)
                .font(.title2)
                .foregroundColor(.black)
                .frame(width: width, alignment: alignment)
        }
    }
}
