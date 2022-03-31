//
//  ContentView.swift
//  Project1SwiftUI
//
//  Created by NGUYEN MINH DUC on 25/03/2022.
//

import SwiftUI
import Combine

class DataSource {
    let didChange = PassthroughSubject<Void, Never>()
    var pictures = [String]()
    
    init() {
        let fm = FileManager.default
        if let path = Bundle.main.resourcePath, let items = try? fm.contentsOfDirectory(atPath: path) {
            for item in items {
                if item.hasPrefix("nssl") {
                    pictures.append(item)
                }
            }
        }
    }
}

struct ContentView: View {
//    @ObservedObject var dataSource = DataSource()
    var body: some View {
        NavigationView {
            List {
                Text("1")
                Text("2")
                Text("3")
                Text("4")
            }
            .navigationTitle("List Number")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
