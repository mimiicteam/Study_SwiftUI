//
//  ScrollViewView.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 02/05/2022.
//

import SwiftUI

import SwiftUI

struct CustomText: View {
    let text: String
    
    var body: some View {
        Text(text)
    }
    
    init(_ text: String) {
        print("Creating a new CustomText")
        self.text = text
    }
}

struct ScrollViewView: View {
    var body: some View {
        ScrollView(.vertical) {
            VStack(spacing: 10) {
                ForEach(0..<99) {
                    CustomText("\($0)")
                        .foregroundColor(.white)
                        .font(.caption.bold())
                        .frame(width: 200)
                        .background(.black)
                        .cornerRadius(10)
                }
            }
            .frame(maxWidth: .infinity)
        }
    }
}

struct ScrollView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewView()
    }
}
