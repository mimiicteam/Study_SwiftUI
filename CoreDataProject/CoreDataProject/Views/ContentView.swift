//
//  ContentView.swift
//  CoreDataProject
//
//  Created by NGUYEN MINH DUC on 15/05/2022.
//

import CoreData
import SwiftUI

struct ContentView: View {
    @Environment(\.managedObjectContext) var moc
    @State private var lastNameFilter = "M"
    
    var body: some View {
        VStack {
            FilteredList(filterKey: "lastName", filterValue: lastNameFilter) { (singer: Singer) in
                Text("\(singer.wrappedFirstName) \(singer.wrappedLastName)")
            }
            
            Button("Add Examples") {
                let duc = Singer(context: moc)
                duc.firstName = "Duc"
                duc.lastName = "Minh"
                
                let hung = Singer(context: moc)
                hung.firstName = "Hung"
                hung.lastName = "Hoang"
                
                let vinh = Singer(context: moc)
                vinh.firstName = "Vinh"
                vinh.lastName = "Xuan"
                
                let thien = Singer(context: moc)
                thien.firstName = "Thien"
                thien.lastName = "Phuoc"
                
                try? moc.save()
            }
            
            Button("Show M") {
                lastNameFilter = "M"
            }
            
            Button("Show P") {
                lastNameFilter = "P"
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
