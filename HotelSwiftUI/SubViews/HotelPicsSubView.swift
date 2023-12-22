//
//  PicsSubView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 21.12.2023.
//

import SwiftUI

//struct PicsSubView: View {
//    
//    let widthOfScreen: CGFloat = 360
//    let heightOfScreen: CGFloat = 267
//    
//    var hotel: HotelStructure?
//    
//    var body: some View {
//        if let imageUrls = hotel?.imageUrls, !imageUrls.isEmpty {
//            let maxIndex = min(3, imageUrls.count)
//            let indices = Array(0..<maxIndex)
//            
//            TabView {
//                ForEach(indices, id: \.self) { index in
//                    hotelImage(url: imageUrls[index])
//                }
//            }
//            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
//            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
//            .frame(width: widthOfScreen, height: heightOfScreen)
//            .cornerRadius(16)
//        } else {
//            // Handle the case when there are no image URLs.
//            Text("No images available")
//                .foregroundColor(.gray)
//        }
//    }
//    
////    @ViewBuilder
//    private func hotelImage(url: String) -> some View {
//        RoundedRectangle(cornerRadius: 16)
//            .foregroundColor(.clear)
//            .frame(minWidth: widthOfScreen, minHeight: heightOfScreen)
//            .background(
//                AsyncImage(url: URL(string: url)) { image in
//                    image
//                        .resizable()
//                        .aspectRatio(contentMode: .fill)
//                        .frame(minWidth: widthOfScreen, minHeight: heightOfScreen)
//                        .cornerRadius(16)
//                        .clipped()
//                } placeholder: {
//                    ProgressView()
//                        .scaleEffect(2)
//                    Rectangle()
//                        .foregroundColor(.clear)
//                        .frame(minWidth: widthOfScreen, minHeight: heightOfScreen)
//                }
//            )
//    }
//}



struct HotelPicsSubView: View {
    
    let widthOfScreen: CGFloat = 360
    let heightOfScreen: CGFloat = 267
    
    var hotel: HotelStructure?
    
    var body: some View {
        TabView {
            ForEach(0..<3) { index in
                hotelImage(url: hotel?.imageUrls[index] ?? "")
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .frame(width: widthOfScreen, height: heightOfScreen)
        .cornerRadius(16)
        Spacer()
    }
    
//    @ViewBuilder
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
                })
    }
    
}

struct HotelRoomPicsSubView: View {
    
    let widthOfScreen: CGFloat = 360
    let heightOfScreen: CGFloat = 267
    
    var hotelRoom: HotelRoomStructure?
    
    var body: some View {
        TabView {
            ForEach(0..<3) { index in
                hotelRoomImage(url: hotelRoom?.imageUrls[index] ?? "")
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .always))
        .indexViewStyle(.page(backgroundDisplayMode: .always))
        .frame(width: widthOfScreen, height: heightOfScreen)
        .cornerRadius(16)
        Spacer()
    }
    
//    @ViewBuilder
    private func hotelRoomImage(url: String) -> some View {
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
                })
    }
    
}

