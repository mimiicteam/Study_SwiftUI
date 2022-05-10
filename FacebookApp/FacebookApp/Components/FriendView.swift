//
//  FriendView.swift
//  FacebookApp
//
//  Created by NGUYEN MINH DUC on 20/04/2022.
//

import SwiftUI

struct FriendView: View {
    @State private var columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading, spacing: 2) {
                    Text("Bạn bè")
                        .foregroundColor(.white)
                        .font(.subheadline.bold())
                    
                    
                    Text("359 Người bạn")
                        .foregroundColor(.gray)
                        .font(.caption.bold())
                }
                .padding(20)
                
                Spacer()
                
                Button("Xem tất cả bạn bè") {
                    
                }
                .font(.subheadline.bold())
                .padding(20)
                
            }
            .offset(x: 0, y: -95)
            
            LazyVGrid(columns: columns) {
                ForEach(0..<9) {_ in
                    Image("avatar")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .padding(.horizontal, 10)
                        .padding(.vertical, 10)
                }
            }
            .padding(.horizontal, 10)
            .offset(x: 0, y: -100)
        }
    }
}

struct FriendView_Previews: PreviewProvider {
    static var previews: some View {
        FriendView()
    }
}
