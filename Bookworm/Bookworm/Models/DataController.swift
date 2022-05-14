//
//  DataController.swift
//  BookWorm
//
//  Created by NGUYEN MINH DUC on 10/05/2022.
//

import CoreData
import Foundation
import UIKit

class DataController: ObservableObject {
    let container = NSPersistentContainer.init(name: "BookWorm")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failled to load: \(error.localizedDescription)")
            }
        }
    }
}
