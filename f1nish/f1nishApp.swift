//
//  f1nishApp.swift
//  f1nish
//
//  Created by Tomáš Tomala on 03.03.2023.
//

import SwiftUI

@main
struct f1nishApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
