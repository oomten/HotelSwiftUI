//
//  GrayRectangleCustomView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import Foundation
import SwiftUI

struct WhiteCard<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            content
        }
        .padding(16)
        .background(Color(.white))
        .frame(minWidth: 375, maxWidth: .infinity)
        .cornerRadius(16)
        
    }
}
