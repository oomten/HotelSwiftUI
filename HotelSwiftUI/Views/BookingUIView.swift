//
//  BookingUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 06.09.2023.
//

import SwiftUI

struct BookingUIView: View {
    @Binding var hotel: HotelStructure?
    @State private var phoneNumber = ""
    @State private var mailAddress = ""
    @State private var touristFirstName = ""
    @State private var touristSecondName = ""
    @State private var birthday = ""
    @State private var citizenship = ""
    @State private var passportNumber = ""
    @State private var passportValidityDate = ""
    @State var isEditing = false
    @FocusState private var isFocused: Bool
    
    var body: some View {
        GeometryReader { geometry in
            
            let geoWidth = geometry.size.width - 32
            
            ScrollView(showsIndicators: false) {
                Spacer()
                //MARK: - 1 Part
                WhiteCardSubView {
                    RatingSubView(rating: hotel?.rating, ratingName: hotel?.ratingName)
                        Text("Steigenberger Makadi")
                            .font(.title2)
                            .frame(width: geoWidth, alignment: .leading)
                        Text(hotel?.adress ?? "Address Placeholder")
                            .font(.subheadline)
                            .foregroundColor(.blue)
                }
                

                Spacer()
                //MARK: - 2 Part
                WhiteCardSubView {
                    SpecsSubView(key: "Вылет из", value: "Санкт-Петербург")
                    SpecsSubView(key: "Страна, город", value: "Египет, Хургада")
                    SpecsSubView(key: "Даты", value: "19.09.2023 – 27.09.2023")
                    SpecsSubView(key: "Кол-во ночей", value: "7 ночей")
                    SpecsSubView(key: "Отель", value: "Steigenberger Makadi")
                    SpecsSubView(key: "Номер", value: "Стандартный с видом на бассейн или сад")
                    SpecsSubView(key: "Питание", value: "Все включено")
                }
                Spacer()
                // MARK: - 3 Part
                WhiteCardSubView {
                    SectionNameSubView(width: geoWidth, headlineName: "Информация о покупателе")
                    FillFormSubView(width: geoWidth) {
                        TextField(isEditing ? "+ 7 " : "Номер телефона", text: $phoneNumber)
                            .font(.title2)
                            .foregroundStyle(Color.black)
                            .keyboardType(.phonePad)
                            .focused($isFocused)
                            .autocapitalization(.none)
                            .textContentType(.telephoneNumber)
                            .onTapGesture {
                                if !isEditing {
                                    self.isEditing = true
                                    self.phoneNumber = "+ 7 "
                                }
                            }
                            .toolbar {
                                ToolbarItem(placement: .keyboard) {
                                    Button("✅ Готово") {
                                        isFocused = false
                                    }
                                }
                            }
                    }
                    
                    FillFormSubView(width: geoWidth) {
                        TextField("Электронная почта", text: $mailAddress)
                    }

                }
                // MARK: - 4 Part
                WhiteCardSubView {
                    SectionNameSubView(width: geoWidth, headlineName: "Первый турист")
                    
                    FillFormSubView(width: geoWidth) {
                        TextField("Имя", text: $touristFirstName)
                    }
                    FillFormSubView(width: geoWidth) {
                        TextField("Фамилия", text: $touristSecondName)
                    }
                    FillFormSubView(width: geoWidth) {
                        TextField("Дата рождения", text: $birthday)
                    }
                    FillFormSubView(width: geoWidth) {
                        TextField("Гражданство", text: $citizenship)
                    }
                    FillFormSubView(width: geoWidth) {
                        TextField("Номер загранпаспорта", text: $passportNumber)
                    }
                    FillFormSubView(width: geoWidth) {
                        TextField("Срок действия загранпаспорта", text: $passportValidityDate)
                    }
                }
                
                // MARK: - 5 Part
                WhiteCardSubView {
                    HStack{
                        SectionNameSubView(width: geoWidth - 32, headlineName: "Второй турист")
                        ZStack {
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width: 32, height: 32)
                                .opacity(0.1)
                            Image(systemName: "chevron.down")
                        }
                        .foregroundStyle(.blue)
                        .fontWeight(.bold)
                    }
                }
                // MARK: - 6 Part
                WhiteCardSubView {
                    HStack{
                        SectionNameSubView(width: geoWidth - 32, headlineName: "Добавить туриста")
                        ZStack {
                            RoundedRectangle(cornerRadius: 6)
                                .frame(width: 32, height: 32)
                                .foregroundStyle(.blue)
                            Image(systemName: "plus")
                                .foregroundStyle(.white)
                        }
                        .fontWeight(.bold)
                    }
                }
                
                // MARK: - 7 Part
                WhiteCardSubView {
                    sumSubView(key: "Тур", value: "186 000 ₽", changeValueStyle: false)
                    sumSubView(key: "Топливный сбор", value: "9 300 ₽", changeValueStyle: false)
                    sumSubView(key: "Сервисный сбор", value: "2 136 ₽", changeValueStyle: false)
                    sumSubView(key: "К оплате", value: "198 036 ₽", changeValueStyle: true)
                }
                
                NavigationLink(destination: FinishUIView()) {
                    Text("Оплатить 198 036 ₽")
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
                        .stroke(Color(.systemGray5), lineWidth: 1))
            }
            .background(Color(.systemGray6))
            .navigationBarTitle("Бронирование", displayMode: .inline)
        }
    }
}

// MARK: - SubViews

struct SpecsSubView: View {
    let key: String
    let value: String
    
    var body: some View {
        HStack {
            Text(key)
                .frame(width: 140, alignment: .leading)
                .foregroundColor(Color(.systemGray))
            Text(value)
            Spacer()
        }
    }
}

struct sumSubView: View {
    let key: String
    let value: String
    let changeValueStyle: Bool
    
    var body: some View {
        HStack {
            Text(key)
                .frame(alignment: .leading)
                .foregroundColor(Color(.systemGray))
            Spacer()
            Text(value)
                .foregroundColor(changeValueStyle ? .blue : .primary)
                .fontWeight(changeValueStyle ? .medium : .none)
                .frame(alignment: .trailing)
        }
    }
}


struct FillFormSubView<Content: View>: View {
    
    let width: CGFloat
    let alignment = Alignment.leading
    let content: () -> Content
    
    var body: some View {
        VStack {
            VStack(spacing: 4) {
                content()
            }
            .font(.title2)
        }
        .padding(16)
        .frame(width: width, height: 52, alignment: alignment)
        .background(Color(.systemGray6))
        .cornerRadius(10)
    }
}

 // MARK: - Preview
struct BookingUIView_Previews: PreviewProvider {
    static var previews: some View {
        BookingUIView(hotel: .constant(nil))
    }
}


