//
//  ButtonStatusView.swift
//  FacebookApp
//
//  Created by NGUYEN MINH DUC on 20/04/2022.
//

import SwiftUI

struct ButtonStatusView: View {
    var body: some View {
        VStack {
            Button("Đặt trạng thái") {
                
            }
            .frame(width: 380, height: 40)
            .font(.caption.bold())
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)

            HStack {
                Button("Chỉnh sửa trang cá nhân") {
                    
                }
                .frame(width: 320, height: 40)
                .font(.caption.bold())
                .foregroundColor(.white)
                .background(Color("dark_2"))
                .cornerRadius(10)
                
                Button("...") {
                    
                }
                .frame(width: 50, height: 40)
                .font(.caption.bold())
                .foregroundColor(.white)
                .background(Color("dark_2"))
                .cornerRadius(10)
            }
        }
        .offset(x: 0, y: -90)
    }
}

struct ButtonStatusView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStatusView()
    }
}
