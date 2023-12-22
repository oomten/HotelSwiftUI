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
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                GreyBackgroundCustomView {
                    WhiteCardNoSpacingSubView {
                        HotelPicsSubView(hotel: hotel)
                        Spacer(minLength: 16)
                        RatingSubView(rating: hotel?.rating, ratingName: hotel?.ratingName)
                        Text("Steigenberger Makadi")
                            .font(.title2)
                            .fontWeight(.medium)
                        
                        Spacer(minLength: 8)
                        
                        Button(action: {}) {
                            Text(hotel?.adress ?? "Address Placeholder")
                                .font(.footnote)
                                .foregroundColor(.blue)
                        }
                        
                        Spacer(minLength: 16)
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
                                .lineLimit(1)
                        }
                    }
                    Spacer(minLength: 8)
                    WhiteCardNoSpacingSubView {
                        SectionNameSubView(width: 360, headlineName: "Об отеле")
                        HStack {
                            TagSubView(title: "3-я линия")
                            TagSubView(title: "Платный Wi-Fi в фойе")
                        }
                        HStack {
                            TagSubView(title: "30 км до аэропорта")
                            TagSubView(title: "1 км до пляжа")
                        }
                        Spacer(minLength: 16)
                        Text(hotel?.aboutTheHotel.description ?? "Description")
                            .font(.body)
                        DetailsSubView()
                    }
                    Spacer(minLength: 12)
                    //MARK: - Navigation Button
                    ZStack {
                        NavigationLink(destination: HotelRoomUIView()) {
                            Text("К выбору номера")
                                .font(.title3)
                                .foregroundColor(.white)
                                .frame(minWidth: 343, maxWidth: .infinity, minHeight: 48, alignment: .center)
                                .background(Color.blue)
                                .cornerRadius(16)
                        }
                        .padding(16)
                        .background(Color.white)
                    }
                    .background(.white)
                    .overlay(
                        Rectangle()
                            .inset(by: -0.5)
                            .stroke(Color(red: 0.91, green: 0.91, blue: 0.93), lineWidth: 1))
                }
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

func formattedNumber(_ number: Int) -> String {
    let numberFormatter = NumberFormatter()
    numberFormatter.numberStyle = .decimal
    numberFormatter.groupingSeparator = " "
    return numberFormatter.string(from: NSNumber(value: number)) ?? ""
}

#Preview {
    SwiftUIView()
}


