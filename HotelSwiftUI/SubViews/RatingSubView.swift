//
//  RatingSubView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 21.12.2023.
//

import Foundation
import SwiftUI

struct RatingSubView: View {
    var rating: Int?
    var ratingName: String?

    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Image(systemName: "star.fill")
                .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                .imageScale(.small)
            
            Text(String(rating ?? 0))
                .customTextStyle()
            
            Text(ratingName ?? "Rating Name")
                .customTextStyle()
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color(red: 1, green: 0.78, blue: 0).opacity(0.2))
        .cornerRadius(5)
    }
}

struct CustomTextStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.callout)
            .fontWeight(.medium)
            .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
    }
}

extension View {
    func customTextStyle() -> some View {
        self.modifier(CustomTextStyle())
    }
}
