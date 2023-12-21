//
//  HotelRoomUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 05.09.2023.
//

import SwiftUI

struct HotelRoomUIView: View {
    var body: some View {
        
            ScrollView(showsIndicators: false){
                GreyBackgroundCustomView {
                   
                    WhiteCardSubView {
                        VStack {
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(minWidth: 343, minHeight: 297)
                                .background(
                                    Image("RoomPlaceHolder")
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .frame(minWidth: 343, minHeight: 297)
                                        .clipped()
                                    

                                )
                                .cornerRadius(15)
                            Spacer(minLength: 16)
                        }
                        VStack {
                            Text("Стандартный с видом на бассейн или сад")
                              .font(
                                Font.custom("SF Pro Display", size: 22)
                                  .weight(.medium)
                              )
                              .foregroundColor(.black)
                              .frame(minWidth: 343, maxWidth: .infinity, alignment: .topLeading)
                        }
                        VStack{
                                HStack(alignment: .top, spacing: 8) {
                                    HStack(alignment: .center, spacing: 2) {
                                        Text("Все включено")
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
                                        Text("Кондиционер")
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
                        }
                        VStack{
                            HStack(alignment: .center, spacing: 2) {
                                HStack {
                                    Text("Подробнее о номере")
                                      .font(
                                        Font.custom("SF Pro Display", size: 16)
                                          .weight(.medium)
                                      )
                                      .multilineTextAlignment(.center)
                                  .foregroundColor(Color(red: 0.05, green: 0.45, blue: 1))
                                }

                                HStack(alignment: .top, spacing: 10) {
                                    Image("Vector_55")
                                    .frame(width: 6, height: 12)
                                }
                                .padding(.leading, 10)
                                .padding(.trailing, 8)
                                .padding(.vertical, 6)
                                
                            }
                            .padding(.leading, 10)
                            .padding(.trailing, 2)
                            .padding(.vertical, 5)
                            .frame(height: 29, alignment: .leading)
                            .background(Color(red: 0.05, green: 0.45, blue: 1).opacity(0.1))
                            .cornerRadius(5)
                        }
                        VStack{
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
                           
                        }
                        VStack {
                            // MARK: - Navigation Button
                            NavigationLink(destination: BookingUIView(hotel: .constant(nil)), label: {
                                Text("Выбрать номер")
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
                            
                            .background(Color.white)
                        }
                    }
                }
            }
            .navigationBarTitle("Выбор номера", displayMode: .inline)
        
    }
}

struct HotelRoomUIView_Previews: PreviewProvider {
    static var previews: some View {
        HotelRoomUIView()
    }
}
