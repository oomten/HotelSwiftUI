//
//  PicturesScrollView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 14.09.2023.
//

import SwiftUI

struct PicturesScrollView: View {
    var body: some View {
        TabView {
            ForEach(MockData.items) { item in
                RoundedRectangle(cornerRadius: 16)
                    .foregroundStyle(item.color.gradient)
                    
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
//        .indexViewStyle(.page)
//        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .frame(height: 300)
        .cornerRadius(16)
        .padding()
        Spacer()
    }
    
}

struct PictureItem: Identifiable {
    let id = UUID()
    let color: Color
}

struct MockData {
    static var items = [
        PictureItem(color: .blue),
        PictureItem(color: .red),
        PictureItem(color: .cyan),
        PictureItem(color: .green),
        PictureItem(color: .mint),
    ]
}

#Preview { PicturesScrollView() }
