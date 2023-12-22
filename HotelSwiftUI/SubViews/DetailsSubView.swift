//
//  DetailsSubView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 22.12.2023.
//

import Foundation
import SwiftUI

struct DetailsSubView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10) {
            DetailsRow(imageName: "emoji-happy", title: "Удобства", subtitle: "Самое необходимое")
            DetailsRow(imageName: "tick-square", title: "Что включено", subtitle: "Самое необходимое")
            DetailsRow(imageName: "close-square", title: "Что не включено", subtitle: "Самое необходимое")
        }
        .padding(15)
        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
        .cornerRadius(15)
    }
}

struct DetailsRow: View {
    let imageName: String
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(imageName)
                .frame(width: 24, height: 24)
            VStack {
                HStack {
                    VStack(alignment: .leading, spacing: 2) {
                        Text(title)
                            .font(.body)
                            .fontWeight(.medium)
                        Text(subtitle)
                            .font(.footnote)
                            .fontWeight(.medium)
                            .foregroundColor(.gray)
                    }
                    Spacer()
                    HStack(alignment: .top, spacing: 10) {
                        Image("Icons")
                    }
                    .padding(.leading, 10)
                    .padding(.trailing, 8)
                    .padding(.vertical, 6)
                }
                Divider()
            }
        }
    }
}


