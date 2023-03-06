//
//  ContentView.swift
//  f1nish
//
//  Created by Tomáš Tomala on 03.03.2023.
//

import SwiftUI
import CoreData

struct MainView: View {

    var body: some View {
        Text("Hallo")
    }

}

private let itemFormatter: DateFormatter = {
    let formatter = DateFormatter()
    formatter.dateStyle = .full
    formatter.timeStyle = .medium
    return formatter
}()

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}
