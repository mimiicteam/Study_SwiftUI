//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by NGUYEN MINH DUC on 15/05/2022.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    
    @StateObject private var dataController = DataController()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
