//
//  HotelSwiftUIApp.swift
//  HotelSwiftUI
//
//  Created by Denis Nurislamov on 01.09.2023.
//

import SwiftUI

@main
struct HotelSwiftUIApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            SwiftUIView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
