//
//  Traffic_light_2App.swift
//  Traffic light 2
//
//  Created by Карина on 19.10.2022.
//

import SwiftUI

@main
struct Traffic_light_2App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
