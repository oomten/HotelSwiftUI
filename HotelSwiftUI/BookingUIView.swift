//
//  BookingUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import SwiftUI

struct BookingUIView: View {
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 16)
                        .frame(width: .infinity, height: 400, alignment: .leading)
                    .foregroundColor(.white)
                    
                }
            }
        }
        .background(Color(UIColor.systemGray6))
    }
}

struct BookingUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookingUIView()
    }
}
