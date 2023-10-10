//
//  CardCustomView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import Foundation

import SwiftUI

struct CardCustomView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
       Text("")
    }
}
