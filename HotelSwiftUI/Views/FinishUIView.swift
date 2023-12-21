//
//  FinishUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 20.12.2023.
//

import SwiftUI

struct FinishUIView: View {
    var body: some View {
        VStack(spacing: 16) {
            ZStack {
                Circle()
                    .frame(width: 140)
                    .foregroundStyle(Color(.systemGray6))
                Text("🎉")
                    .font(.system(size: 74))
            }
            .padding()
            Text("Ваш заказ принят в работу")
                .font(.title2)
                .fontWeight(.medium)
            Text("Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.")
                .font(.callout)
                .multilineTextAlignment(.center)
                .foregroundStyle(.gray)
        }
        .padding(25)
        Spacer()
        NavigationLink(destination: SwiftUIView()) {
            Text("Супер!")
                .fontWeight(.medium)
                .foregroundColor(.white)
                .frame(minWidth: 343, maxWidth: .infinity, minHeight: 48, alignment: .center)
                .background(Color.blue)
                .cornerRadius(16)
                .padding(16)
                .background(Color.white)
        }
        .background(.white)
        .overlay(
            Rectangle()
                .inset(by: -0.5)
                .stroke(Color(.systemGray5), lineWidth: 1)
        )
    }
}

#Preview {
    FinishUIView()
}
