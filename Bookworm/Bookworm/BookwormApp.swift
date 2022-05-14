//
//  BookWormApp.swift
//  BookWorm
//
//  Created by NGUYEN MINH DUC on 10/05/2022.
//

import SwiftUI

@main
struct BookWormApp: App {
    
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
