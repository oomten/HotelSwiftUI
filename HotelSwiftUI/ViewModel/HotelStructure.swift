//
//  HotelStructure.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 09.09.2023.
//

import Foundation

struct HotelStructure: Codable {
    var id: Int
    var name: String
    var adress: String
    var minimalPrice: Int
    var priceForIt: String
    var rating: Int
    var ratingName: String
    var imageUrls: [String]
    
    var aboutTheHotel: AboutHotel

    struct AboutHotel: Codable {
        var description: String
        var peculiarities: [String]
    }
}

