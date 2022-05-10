//
//  StatusView.swift
//  FacebookApp
//
//  Created by NGUYEN MINH DUC on 20/04/2022.
//

import SwiftUI

struct StatusView: View {
    var body: some View {
        VStack() {
            ZStack {
                Image("apple")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(20)
                    .padding()
                
                Circle()
                    .foregroundColor(.white)
                    .frame(width: 35, height: 35)
                    .offset(x: 150, y: 70)
            }
            
            ZStack {
                Image("avatar")
                    .resizable()
                    .cornerRadius(150)
                
                Circle()
                    .stroke(Color("dark"), lineWidth: 6)
            }
            .frame(width: 150, height: 150)
            .offset(x: 0, y: -100)
            
            VStack() {
                Text("Nguyễn Đức (MiMi)")
                    .foregroundColor(.white)
                    .font(.subheadline.bold())
                    .padding(1)
                
                Text("Hey! I'm MiMi")
                    .foregroundColor(.white)
                    .font(.caption)
                
                Text("Mobile Developer(iOS)")
                    .foregroundColor(.white)
                    .font(.caption)
            }
            .offset(x: 0, y: -90)
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView()
    }
}
