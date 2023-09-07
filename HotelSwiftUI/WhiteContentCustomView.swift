//
//  GrayRectangleCustomView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import Foundation
import SwiftUI

struct WhiteContentCustomView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack{
            ZStack{
                VStack{
                    VStack(alignment: .leading) {
                       
                        content
                        
                    }
                }
                .padding(.horizontal, 16)
            }
            .frame(minWidth: 375, maxWidth: .infinity)
            .background(.white)
            .cornerRadius(12)
            Spacer(minLength: 8)
        }
    }
}
