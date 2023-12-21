//
//  SwiftUIView.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 01.09.2023.
//



import SwiftUI

struct SwiftUIView: View {
    
    @State private var hotel: HotelStructure?
    let widthOfScreen = UIScreen.main.bounds.width - 32
    let heigtOfScreen = 280.00
    
    func formattedNumber(_ number: Int) -> String {
        let numberFormatter = NumberFormatter()
        numberFormatter.numberStyle = .decimal
        numberFormatter.groupingSeparator = " "
        return numberFormatter.string(from: NSNumber(value: number)) ?? ""
    }
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                ZStack {
                    VStack {
                        //MARK: - 1 Part
                        ZStack {
                            VStack {
                                VStack(alignment: .leading) {
                                    VStack {
                                        ScrollView(.horizontal, showsIndicators: false) {
                                            LazyHStack(spacing: 0) {
                                                RoundedRectangle(cornerRadius: 16)
                                                    .foregroundColor(.clear)
                                                    .frame(minWidth: widthOfScreen, minHeight: heigtOfScreen)
                                                    .background(
                                                        AsyncImage(url: URL(string: hotel?.imageUrls[0] ?? "")) {
                                                            image in image
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fill)
                                                                .frame(minWidth: widthOfScreen, minHeight: heigtOfScreen)
                                                                .cornerRadius(16)
                                                                .clipped()
                                                        } placeholder: {
                                                            ProgressView()
                                                                .scaleEffect(2)
                                                            Rectangle()
                                                                .foregroundColor(.clear)
                                                                .frame(minWidth: widthOfScreen, minHeight: heigtOfScreen)})
                                                RoundedRectangle(cornerRadius: 16)
                                                    .foregroundColor(.clear)
                                                    .frame(minWidth: widthOfScreen, minHeight: heigtOfScreen)
                                                    .background(
                                                        AsyncImage(url: URL(string: hotel?.imageUrls[1] ?? "")) {
                                                            image in image
                                                                .resizable()
                                                                .aspectRatio(contentMode: .fill)
                                                                .frame(minWidth: widthOfScreen, minHeight: heigtOfScreen)
                                                                .cornerRadius(16)
                                                                .clipped()
                                                        } placeholder: {
                                                            ProgressView()
                                                                .scaleEffect(2)
                                                            Rectangle()
                                                                .foregroundColor(.clear)
                                                                .frame(minWidth: widthOfScreen, minHeight: heigtOfScreen)})
                                            }
                                        }
                                    }
                                    .frame(minWidth: 375, maxWidth: .infinity)
                                    
                                    HotelView(hotel: hotel)
                                    
                                    Spacer(minLength: 16)
                                    
                                    
                                    RatingSubView(rating: hotel?.rating, ratingName: hotel?.ratingName)
                                    
                                    Text("Steigenberger Makadi")
                                        .font(.title2)
                                        .fontWeight(.medium)
                                        .frame(width: 343, alignment: .leading)
                                    
                                    Spacer(minLength: 8)
                                    
                                    Text(hotel?.adress ?? "Address Placeholder")
                                        .font(.footnote)
                                        .foregroundColor(.blue)
                                        .frame(width: 343, alignment: .leading)
                                        .padding(.bottom, 5)
                                    
                                    HStack(alignment: .lastTextBaseline){
                                        Text("от")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        
                                        Text(formattedNumber(hotel?.minimalPrice ?? 0))
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        Text("₽")
                                            .font(.title)
                                            .fontWeight(.semibold)
                                        
                                        Text(hotel?.priceForIt ?? "Placeholder")
                                            .font(.body)
                                            .foregroundColor(Color(.systemGray))
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
                        
                        //MARK: - 2 Part
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
                                    
                                    Text(hotel?.aboutTheHotel.description ?? "Description")
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
                        
                        //MARK: - 3 Part
                        ZStack {
                            //MARK: - Navigation Button
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
                        //                        .frame(minWidth: 375, maxWidth: .infinity, minHeight: 88)
                        .background(.white)
                        .overlay(
                            Rectangle()
                                .inset(by: -0.5)
                                .stroke(Color(red: 0.91, green: 0.91, blue: 0.93), lineWidth: 1))
                    }
                }
                .background(Color(.systemGray6))
                .edgesIgnoringSafeArea(.bottom)
            }
            .navigationBarTitle("Отель", displayMode: .inline)
        }
        .task {
            do {
                hotel = try await getHotel()
            } catch HotelError.invalidURL{
                print("Invalid URL")
            } catch HotelError.invalidData {
                print("Invalid Data")
            } catch HotelError.invalidResponse {
                print("Invalid Response")
            } catch {
                print("Unexpected Error")
            }
        }
    }
}

struct Preview: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
