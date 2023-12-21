//
//  PicsSubView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 21.12.2023.
//

import Foundation
import SwiftUI

struct HotelView: View {
    var hotel: HotelStructure? // Replace YourHotelType with the actual type of your hotel data

    var body: some View {
        VStack {
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 0) {
                    ForEach(0..<2) { index in
                        hotelImage(url: hotel?.imageUrls[index] ?? "")
                    }
                }
            }
            .frame(minWidth: 375, maxWidth: .infinity)
            Spacer(minLength: 16)
        }
    }

    @ViewBuilder
    private func hotelImage(url: String) -> some View {
        RoundedRectangle(cornerRadius: 16)
            .foregroundColor(.clear)
            .frame(minWidth: widthOfScreen, minHeight: heightOfScreen)
            .background(
                AsyncImage(url: URL(string: url)) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(minWidth: widthOfScreen, minHeight: heightOfScreen)
                        .cornerRadius(16)
                        .clipped()
                } placeholder: {
                    ProgressView()
                        .scaleEffect(2)
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(minWidth: widthOfScreen, minHeight: heightOfScreen)
                }
            )
    }

    let widthOfScreen: CGFloat = 200 // Change this to your desired width
    let heightOfScreen: CGFloat = 150 // Change this to your desired height
}
