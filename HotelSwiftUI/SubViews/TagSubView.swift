//
//  TagSubView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 21.12.2023.
//

import Foundation
import SwiftUI

struct TagSubView: View {
    let title: String

    var body: some View {
        HStack(alignment: .center, spacing: 2) {
            Text(title)
                .font(.body)
                .foregroundColor(Color(.systemGray))
                .multilineTextAlignment(.center)
        }
        .padding(.horizontal, 10)
        .padding(.vertical, 5)
        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
        .cornerRadius(5)
    }
}
