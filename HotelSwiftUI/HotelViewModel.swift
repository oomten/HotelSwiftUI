//
//  HotelViewModel.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 07.09.2023.
//

import Foundation
import SwiftUI



class HotelViewModel: ObservableObject {
    
    private struct Hotel: Codable {
        var id: Int
        var name: String
        var address: String
        var minimal_price: Int
        var price_for_it: String
        var rating: Int
        var rating_name: String
        var image_urls: [String]
        var about_the_hotel: AboutHotel
        
        struct AboutHotel: Codable {
            var description: String
            var peculiarities: [String]
        }
    }
    
    var urlString = "https://run.mocky.io/v3/35e0d18e-2521-4f1b-a575-f0fe366f66e3"
    
    func getData() async {
        print("Accessing to\(urlString)")
        
        guard let url = URL(string: urlString) else {
            print("Error: Can't create a URL from \(urlString)")
            return
        }
        
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            guard let hotel = try? JSONDecoder().decode(Hotel.self, from: data) else {
                print("JSON Error: Can't decode data")
                return
            }
            print("Success! \(hotel.name), next \(hotel.address)")
        } catch {
            print("Error: Can't get data from \(urlString)")
        }
    }
}


//        do {
//            let (data, _) = try await URLSession.shared.data(from: url)
//           let jsonData = guard (try? JSONDecoder().decode(Hotel.self, from: data)) != nil else {
//                print("ERROR JSON: cant' decode!")
//                return
//            }
//            print("Success")
//
//        } catch {
//            print("ERROR: could not create URL from \(urlString)")
//        }

//struct HotelViewModel: View {
//    let hotel: Hotel
//
//    var body: some View {
//        VStack {
//            Text(hotel.name)
//                .font(.title)
//                .fontWeight(.bold)
//                .padding()
//
//            Text(hotel.address)
//                .font(.subheadline)
//                .foregroundColor(.gray)
//                .padding()
//
//            Text("Rating: \(hotel.rating_name) (\(hotel.rating) stars)")
//                .font(.headline)
//                .padding()
//
//            Text("Price: \(hotel.price_for_it)")
//                .font(.headline)
//                .padding()
//
//            Text("About the Hotel")
//                .font(.title)
//                .fontWeight(.bold)
//                .padding()
//
//            Text(hotel.about_the_hotel.description)
//                .font(.body)
//                .padding()
//
//            Text("Peculiarities:")
//                .font(.headline)
//                .fontWeight(.bold)
//                .padding()
//
//            ForEach(hotel.about_the_hotel.peculiarities, id: \.self) { peculiarity in
//                Text("• \(peculiarity)")
//                    .font(.subheadline)
//                    .foregroundColor(.green)
//                    .padding(.leading)
//            }
//
//            Spacer()
//        }
//        .navigationBarTitle("Hotel Details", displayMode: .inline)
//    }
//}

//struct HotelDetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        HotelViewModel(hotel: Hotel.example)
//    }
//}


