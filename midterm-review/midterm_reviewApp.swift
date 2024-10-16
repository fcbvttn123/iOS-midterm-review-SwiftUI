//
//  midterm_reviewApp.swift
//  midterm-review
//
//  Created by Default User on 10/15/24.
//

import SwiftUI

@main
struct midterm_reviewApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
