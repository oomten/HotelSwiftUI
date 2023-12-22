//
//  Networking.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 09.09.2023.
//

import Foundation

enum HotelError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

func getHotel() async throws -> HotelStructure {
    
//    let urlApiString = "http://localhost:3000/data"
    let urlApiString = "https://run.mocky.io/v3/d144777c-a67f-4e35-867a-cacc3b827473"
    
    // превращение urlApiString в URL
    guard let url = URL(string: urlApiString) else {
        throw HotelError.invalidURL
    }
    
    // получение данных
    let (data, response) = try await URLSession.shared.data(from: url)
    
    // обработка ответа с сервера. Если ответ 200 то ок.
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        print(response)
        throw HotelError.invalidResponse
    }
    
    // обработка data
    do {
     let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(HotelStructure.self, from: data)
    } catch {
        throw HotelError.invalidData
    }
}

enum HotelRoomError: Error {
    case invalidURL
    case invalidResponse
    case invalidData
}

func getHotelRoom() async throws -> HotelRoomStructure {
    
    let urlApiString = "https://run.mocky.io/v3/8b532701-709e-4194-a41c-1a903af00195"
    
    // превращение urlApiString в URL
    guard let url = URL(string: urlApiString) else {
        throw HotelRoomError.invalidURL
    }
    
    // получение данных
    let (data, response) = try await URLSession.shared.data(from: url)
    
    // обработка ответа с сервера. Если ответ 200 то ок.
    guard let response = response as? HTTPURLResponse, response.statusCode == 200 else {
        print(response)
        throw HotelRoomError.invalidResponse
    }
    
    // обработка data
    do {
     let decoder = JSONDecoder()
        decoder.keyDecodingStrategy = .convertFromSnakeCase
        return try decoder.decode(HotelRoomStructure.self, from: data)
    } catch {
        throw HotelRoomError.invalidData
    }
}
