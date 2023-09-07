//
//  SwiftUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 01.09.2023.
//

import SwiftUI

struct SwiftUIView: View {
    @StateObject var hotelViewModel = HotelViewModel()
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    VStack {
                        // 1 Part
                        ZStack {
                            VStack  {
                                VStack(alignment: .leading) {
                                    VStack {
                                        Rectangle()
                                            .foregroundColor(.clear)
                                            .frame(minWidth: 343, minHeight: 297)
                                            .background(
                                                Image("HotelPlaceholder")
                                                    .resizable()
                                                    .aspectRatio(contentMode: .fill)
                                                    .frame(minWidth: 343, minHeight: 297)
                                                    .clipped()
                                                
                                            )
                                            .cornerRadius(15)
                                        Spacer(minLength: 16)
                                        
                                    }
                                    HStack(alignment: .center, spacing: 2) {
                                        Image(systemName: "star.fill")
                                            .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                                            .imageScale(.small)
                                        Text("5 Превосходно")
                                            .font(
                                                Font.custom("SF Pro Display", size: 16)
                                                    .weight(.medium)
                                            )
                                            .multilineTextAlignment(.center)
                                            .foregroundColor(Color(red: 1, green: 0.66, blue: 0))
                                    }
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 5)
                                    .background(Color(red: 1, green: 0.78, blue: 0).opacity(0.2))
                                    .cornerRadius(5)
                                    
                                    Text("")
                                        .font(
                                            Font.custom("SF Pro Display", size: 22)
                                                .weight(.medium)
                                        )
                                        .foregroundColor(.black)
                                        .frame(width: 343, alignment: .topLeading)
                                    
                                    Spacer(minLength: 8)
                                    
                                    Text("Madinat Makadi, Safaga Road, Makadi Bay, Египет")
                                        .font(
                                            Font.custom("SF Pro Display", size: 14)
                                                .weight(.medium)
                                        )
                                        .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                                        .frame(width: 343, alignment: .topLeading)
                                        .padding(.bottom, 5)
                                    
                                    HStack(alignment: .lastTextBaseline){
                                        Text("от 134 673 ₽")
                                            .font(
                                                Font.custom("SF Pro Display", size: 30)
                                                    .weight(.semibold)
                                            )
                                            .foregroundColor(.black)
                                        
                                        Text("за тур с перелётом")
                                            .font(Font.custom("SF Pro Display", size: 16))
                                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                    }
                                    Spacer(minLength: 16)
                                }
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 16)
                        }
                        .frame(minWidth: 375, maxWidth: .infinity)
                        .background(.white)
                        .cornerRadius(12)
                        Spacer(minLength: 8)
                        
                        // 2 Part
                        ZStack {
                            VStack {
                                VStack(alignment: .leading) {
                                    
                                    Spacer(minLength: 16)
                                    
                                    VStack(alignment: .leading) {
                                        Text("Об отеле")
                                            .font(
                                                Font.custom("SF Pro Display", size: 22)
                                                    .weight(.medium)
                                            )
                                            .foregroundColor(.black)
                                            .frame(width: 343, alignment: .topLeading)
                                    }
                                    Spacer(minLength: 16)
                                    HStack(alignment: .top, spacing: 8) {
                                        HStack(alignment: .center, spacing: 2) {
                                            Text("3-я линия")
                                                .font(
                                                    Font.custom("SF Pro Display", size: 16)
                                                        .weight(.medium)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                        }
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                        .cornerRadius(5)
                                        
                                        HStack(alignment: .center, spacing: 2) {
                                            Text("Платный Wi-Fi в фойе")
                                                .font(
                                                    Font.custom("SF Pro Display", size: 16)
                                                        .weight(.medium)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                        }
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                        .cornerRadius(5)
                                    }
                                    .padding(0)
                                    .frame(alignment: .topLeading)
                                    HStack(alignment: .top, spacing: 8) {
                                        HStack(alignment: .center, spacing: 2) {
                                            Text("30 км до аэропорта")
                                                .font(
                                                    Font.custom("SF Pro Display", size: 16)
                                                        .weight(.medium)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                        }
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                        .cornerRadius(5)
                                        
                                        HStack(alignment: .center, spacing: 2) {
                                            Text("1 км до пляжа")
                                                .font(
                                                    Font.custom("SF Pro Display", size: 16)
                                                        .weight(.medium)
                                                )
                                                .multilineTextAlignment(.center)
                                                .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                        }
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 5)
                                        .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                        .cornerRadius(5)
                                    }
                                    .padding(0)
                                    .frame(alignment: .topLeading)
                                    
                                    Spacer(minLength: 16)
                                    
                                    Text("Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!")
                                        .font(Font.custom("SF Pro Display", size: 16))
                                        .foregroundColor(.black.opacity(0.9))
                                        .frame(minWidth: 343, alignment: .topLeading)
                                    
                                    Spacer(minLength: 16)
                                    
                                    VStack(alignment: .trailing, spacing: 10) {
                                        HStack(alignment: .center, spacing: 12) {
                                            Image("emoji-happy")
                                                .frame(width: 24, height: 24)
                                            
                                            VStack {
                                                HStack{
                                                    VStack(alignment: .leading, spacing: 2) {
                                                        Text("Удобства")
                                                            .font(
                                                                Font.custom("SF Pro Display", size: 16)
                                                                    .weight(.medium)
                                                            )
                                                            .foregroundColor(Color(red: 0.17, green: 0.19, blue: 0.21))
                                                        Text("Самое необходимое")
                                                            .font(
                                                                Font.custom("SF Pro Display", size: 14)
                                                                    .weight(.medium)
                                                            )
                                                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                                    }
                                                    .padding(0)
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
                                        .padding(0)
                                        HStack(alignment: .center, spacing: 12) {
                                            Image("tick-square")
                                                .frame(width: 24, height: 24)
                                            
                                            VStack {
                                                HStack{
                                                    VStack(alignment: .leading, spacing: 2) {
                                                        Text("Что включено")
                                                            .font(
                                                                Font.custom("SF Pro Display", size: 16)
                                                                    .weight(.medium)
                                                            )
                                                            .foregroundColor(Color(red: 0.17, green: 0.19, blue: 0.21))
                                                        Text("Самое необходимое")
                                                            .font(
                                                                Font.custom("SF Pro Display", size: 14)
                                                                    .weight(.medium)
                                                            )
                                                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                                    }
                                                    .padding(0)
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
                                        .padding(0)
                                        HStack(alignment: .center, spacing: 12) {
                                            Image("close-square")
                                                .frame(width: 24, height: 24)
                                            
                                            VStack {
                                                HStack{
                                                    VStack(alignment: .leading, spacing: 2) {
                                                        Text("Что не включено")
                                                            .font(
                                                                Font.custom("SF Pro Display", size: 16)
                                                                    .weight(.medium)
                                                            )
                                                            .foregroundColor(Color(red: 0.17, green: 0.19, blue: 0.21))
                                                        Text("Самое необходимое")
                                                            .font(
                                                                Font.custom("SF Pro Display", size: 14)
                                                                    .weight(.medium)
                                                            )
                                                            .foregroundColor(Color(red: 0.51, green: 0.53, blue: 0.59))
                                                    }
                                                    .padding(0)
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
                                        .padding(0)
                                        
                                    }
                                    .padding(15)
                                    .background(Color(red: 0.98, green: 0.98, blue: 0.99))
                                    .cornerRadius(15)
                                    Spacer(minLength: 16)
                                    
                                }
                            }
                            .padding(.leading, 16)
                            .padding(.trailing, 16)
                        }
                        .frame(minWidth: 375, maxWidth: .infinity)
                        .background(.white)
                        .cornerRadius(12)
                        Spacer(minLength: 12)
                        
                        // 3 Part
                        ZStack {
                            NavigationLink(destination: HotelRoomUIView(), label: {
                                Text("К выбору номера")
                                    .font(
                                        Font.custom("SF Pro Display", size: 16)
                                            .weight(.medium)
                                    )
                                    .kerning(0.1)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(.white)
                                    .frame(minWidth: 343, maxWidth: .infinity, minHeight: 48, alignment: .center)
                                    .background(Color.blue)
                                    .cornerRadius(16)
                                
                            })
                            .padding(16)
                            .background(Color.white)
                            
                            
                        }
                        .frame(minWidth: 375, maxWidth: .infinity, minHeight: 88)
                        .background(.white)
                        .overlay(
                            Rectangle()
                                .inset(by: -0.5)
                                .stroke(Color(red: 0.91, green: 0.91, blue: 0.93), lineWidth: 1)
                            
                        )
                        
                    }
                }
                .frame(minWidth: .infinity, minHheight: .infinity)
                .background(Color((UIColor(red: 0.96, green: 0.96, blue: 0.98, alpha: 1.00))))
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("Отель", displayMode: .inline)
        }
        .task {
           await hotelViewModel.getData()
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}

