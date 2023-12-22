//
//  GreyBackgroundCustomView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import Foundation
import SwiftUI

struct GreyBackgroundCustomView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        ZStack{
            VStack {
                content
            }
        }
        .frame(width: .infinity, height: .infinity)
        .background(Color((UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00))))
        .edgesIgnoringSafeArea(.bottom)
    }
}
