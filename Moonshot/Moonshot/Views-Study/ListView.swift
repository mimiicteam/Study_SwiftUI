//
//  ListView.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 03/05/2022.
//

import SwiftUI

struct ListView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
//        GridItem(.fixed(80)),
//        GridItem(.fixed(80))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(0..<300) {
                    Text("Item\($0)")
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
