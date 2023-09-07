//
//  PicturesPlaceHolderCV.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import Foundation
import SwiftUI

struct PicturesPlaceHolderCV<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(.clear)
                .frame(minWidth: 343, minHeight: 297)
                .background(
                    Image(content as! String)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: 343, minHeight: 297)
                        .clipped()
                        
                )
                .cornerRadius(15)
            Spacer(minLength: 16)
        }
    }
}
