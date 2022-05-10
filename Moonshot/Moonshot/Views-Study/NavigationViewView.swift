//
//  NavigationViewView.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 02/05/2022.
//

import SwiftUI

struct NavigationViewView: View {
    var body: some View {
        NavigationView {
            List(0..<50) { row in
                NavigationLink {
                    Text("Detail View \(row)")
                } label: {
                    Text("Row \(row)")
                }
            }
            .navigationTitle("SwiftUI")
        }
    }
}

struct NavigationViewView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationViewView()
    }
}
