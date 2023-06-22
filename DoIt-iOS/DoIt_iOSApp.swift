//
//  DoIt_iOSApp.swift
//  DoIt-iOS
//
//  Created by Karsten Krause on 20.04.23.
//

import SwiftUI

@main
struct DoIt_iOSApp: App {
    @StateObject private var dataController = DataController()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
