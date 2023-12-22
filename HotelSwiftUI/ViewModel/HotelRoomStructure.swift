//
//  HotelRoomStructure.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 22.12.2023.
//

import Foundation
import SwiftUI

struct HotelRoomStructure: Codable {
    let id: Int
    let name: String
    let price: Int
    let pricePer: String
    let peculiarities: [String]
    let imageUrls: [String]
    
    enum CodingKeys: String, CodingKey {
            case id, name, price
            case pricePer = "price_per"
            case peculiarities, imageUrls
        }
}

let standardRoom = HotelRoomStructure(
    id: 1,
    name: "Стандартный номер с видом на бассейн",
    price: 186600,
    pricePer: "За 7 ночей с перелетом",
    peculiarities: ["Включен только завтрак", "Кондиционер"],
    imageUrls: [
        "https://www.atorus.ru/sites/default/files/upload/image/News/56871/%D1%80%D0%B8%D0%BA%D1%81%D0%BE%D1%81%20%D1%81%D0%B8%D0%B3%D0%B5%D0%B9%D1%82.jpg",
        "https://q.bstatic.com/xdata/images/hotel/max1024x768/267647265.jpg?k=c8233ff42c39f9bac99e703900a866dfbad8bcdd6740ba4e594659564e67f191&o=",
        "https://worlds-trip.ru/wp-content/uploads/2022/10/white-hills-resort-5.jpeg"
    ]
)

let luxuryRoom = HotelRoomStructure(
    id: 2,
    name: "Люкс номер с видом на море",
    price: 289400,
    pricePer: "За 7 ночей с перелетом",
    peculiarities: ["Все включено", "Кондиционер", "Собственный бассейн"],
    imageUrls: [
        "https://mmf5angy.twic.pics/ahstatic/www.ahstatic.com/photos/b1j0_roskdc_00_p_1024x768.jpg?ritok=65&twic=v1/cover=800x600",
        "https://www.google.com/search?q=%D0%BD%D0%BE%D0%BC%D0%B5%D1%80+%D0%BB%D1%8E%D0%BA%D1%81+%D0%B2+%D0%BE%D1%82%D0%B5%D0%BB%D0%B8+%D0%B5%D0%B3%D0%B8%D0%BF%D1%82%D0%B0+%D1%81+%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC+%D0%B1%D0%B0%D1%81%D1%81%D0%B5%D0%B9%D0%BD%D0%BE%D0%BC&tbm=isch&ved=2ahUKEwilufKp-4KBAxUfJxAIHR4uAToQ2-cCegQIABAA&oq=%D0%BD%D0%BE%D0%BC%D0%B5%D1%80+%D0%BB%D1%8E%D0%BA%D1%81+%D0%B2+%D0%BE%D1%82%D0%B5%D0%BB%D0%B8+%D0%B5%D0%B3%D0%B8%D0%BF%D1%82%D0%B0+%D1%81+%D1%81%D0%BE%D0%B1%D1%81%D1%82%D0%B2%D0%B5%D0%BD%D0%BD%D1%8B%D0%BC+%D0%B1%D0%B0%D1%81%D1%81%D0%B5%D0%B9%D0%BD%D0%BE%D0%BC&gs_lcp=CgNpbWcQAzoECCMQJ1CqAVi6HGDmHWgAcAB4AIABXIgB3wySAQIyNZgBAKABAaoBC2d3cy13aXotaW1nwAEB&sclient=img&ei=Y3fuZOX7KJ_OwPAPntyE0AM&bih=815&biw=1440#imgrc=Nr2wzh3vuY4jEM&imgdii=zTCXWbFgrQ5HBM",
        "https://tour-find.ru/thumb/2/bsb2EIEFA8nm22MvHqMLlw/r/d/screenshot_3_94.png"
    ]
)


//struct Room: Identifiable, Decodable {
//    let id: Int
//    let name: String
//    let price: Int
//    let pricePer: String
//    let peculiarities: [String]
//    let imageUrls: [String]
//
//    enum CodingKeys: String, CodingKey {
//        case id, name, price
//        case pricePer = "price_per"
//        case peculiarities, imageUrls
//    }
//}
//
//
//
//class RoomsViewModel: ObservableObject {
//    @Published var rooms: [Room] = []
//
//    init() {
//        fetchRooms()
//    }
//
//    func fetchRooms() {
//        // Implement your networking code here to fetch the JSON data
//        // You can use URLSession, Alamofire, or any other networking library
//
//        // For example:
//        if let url = URL(string: "your_api_url_here") {
//            URLSession.shared.dataTask(with: url) { data, _, error in
//                if let data = data {
//                    do {
//                        let decoder = JSONDecoder()
//                        let result = try decoder.decode([Room].self, from: data)
//                        DispatchQueue.main.async {
//                            self.rooms = result
//                        }
//                    } catch {
//                        print("Error decoding JSON: \(error)")
//                    }
//                }
//            }.resume()
//        }
//    }
//}


