//
//  BookingUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import SwiftUI

struct BookingUIView: View {
    @State private var hotel: HotelStructure?
    @State private var phoneNumber = ""
    private let phoneNumberFormatter = NumberFormatter()
    
    struct KeyValueView: View {
        let key: String
        let value: String
        
        var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(key)
                        .frame(width: 140, alignment: .leading)
                        .foregroundColor(Color(.systemGray))
                }
                VStack(alignment: .leading) {
                    Text(value)
                }
                Spacer()
            }
        }
    }
    
    var body: some View {
        GeometryReader { geometry in
            ScrollView(showsIndicators: false) {
                Spacer()
                //MARK: - 1 Part
                VStack{
                    VStack {
                        ZStack {
                            VStack(spacing: 16) {
                                VStack {
                                    VStack {
                                        HStack(spacing: 2) {
                                            Image(systemName: "star.fill")
                                                .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                                                .imageScale(.small)
                                            
                                            Text(String(hotel?.rating ?? 0))
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                                            
                                            Text(hotel?.ratingName ?? "Rating Name")
                                                .font(.headline)
                                                .fontWeight(.medium)
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                                        }
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 1, green: 0.78, blue: 0).opacity(0.2))
                                        .cornerRadius(5)
                                    }
                                    .frame(width: geometry.size.width - 32 , alignment: .topLeading)
                                    
                                    Text("Steigenberger Makadi")
                                        .font(.title2)
                                        .foregroundColor(.black)
                                        .frame(width: geometry.size.width - 32 , alignment: .topLeading)
                                    
                                    Spacer(minLength: 8)
                                    
                                    Text(hotel?.adress ?? "Address Placeholder")
                                        .font(.subheadline)
                                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                                        .frame(width: geometry.size.width - 32, alignment: .topLeading)
                                        .padding(.bottom, 5)
                                }
                                
                            }
                        }
                    }
                }
                .padding(16)
                .background(Color(.white))
                .frame(width: geometry.size.width)
                .cornerRadius(16)
                
                Spacer()
                //MARK: - 2 Part
                VStack {
                    ZStack {
                        VStack(spacing: 16) {
                            KeyValueView(key: "Вылет из", value: "Санкт-Петербург")
                            KeyValueView(key: "Страна, город", value: "Египет, Хургада")
                            KeyValueView(key: "Даты", value: "19.09.2023 – 27.09.2023")
                            KeyValueView(key: "Кол-во ночей", value: "7 ночей")
                            KeyValueView(key: "Отель", value: "Steigenberger Makadi")
                            KeyValueView(key: "Номер", value: "Стандартный с видом на бассейн или сад")
                            KeyValueView(key: "Питание", value: "Все включено")
                        }
                    }
                }
                .padding(16)
                .background(Color(.white))
                .frame(width: geometry.size.width)
                .cornerRadius(16)
                
                Spacer()
                
                // MARK: - 3 Part
                VStack {
                    ZStack {
                        VStack(spacing: 16) {
                            VStack {
                                Text("Информация о покупателе")
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .frame(width: geometry.size.width - 32 , alignment: .topLeading)
                                
                                Spacer(minLength: 0)
                            }
                            VStack {
                                VStack(alignment: .leading, spacing: 4) {
                                    Text("Номер телефона")
                                        .font(.footnote)
                                        .foregroundStyle(Color(.systemGray))
                                    
                                    TextField("89199222240", text: $phoneNumber )
                                        .font(.title3)
                                        .fontWeight(.regular)
                                        .keyboardType(.phonePad)
                                        .autocapitalization(.none)
                                        .textContentType(.telephoneNumber)
                                        .frame(width: .infinity, height: 16, alignment: .leading)
                                }
                                
                                .padding(0)
                            }
                            .padding(16)
                            .frame(width: geometry.size.width - 32, height: 52, alignment: .leading)
                            .background(Color(.systemGray6))
                            .cornerRadius(10)
                        }
                    }
                }
                .padding(16)
                .background(Color(.white))
                .frame(width: geometry.size.width)
                .cornerRadius(16)
            }
            .background(Color(.systemGray6))
            .navigationBarTitle("Бронирование", displayMode: .inline)
        }
    }
}

struct BookingUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookingUIView()
    }
}
