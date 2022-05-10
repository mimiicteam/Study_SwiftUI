//
//  WorkView.swift
//  FacebookApp
//
//  Created by NGUYEN MINH DUC on 20/04/2022.
//

import SwiftUI

struct WorkView: View {
    fileprivate func moreText(more: String, width: CGFloat, height: CGFloat) -> some View {
        return Text(more)
            .foregroundColor(.white)
            .font(.subheadline.bold())
            .frame(width: width, height: height)
            .background(Color("dark_2"))
            .cornerRadius(40)
    }
    
    fileprivate func workText(work: String) -> Text {
        return Text(work)
            .foregroundColor(.white)
            .font(.subheadline.bold())
    }
    
    fileprivate func imageWork(image: String) -> some View {
        return Image(systemName: image)
            .foregroundColor(.white)
    }
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack() {
                imageWork(image: "latch.2.case.fill")
                
                workText(work: "Làm việc tại OVH")
            }
            
            HStack() {
                imageWork(image: "latch.2.case.fill")
                
                workText(work: "Founder, Developer tại IC Developers")
            }
            
            HStack() {
                imageWork(image: "latch.2.case.fill")
                
                workText(work: "Founder (Director, Manager) tại ICTeam Global")
            }
            
            HStack() {
                imageWork(image: "location.circle.fill")
                
                workText(work: "Đến từ Đà Nẵng")
            }
            
            HStack() {
                imageWork(image: "heart.fill")
                
                workText(work: "Tìm hiểu")
            }
            
            HStack() {
                imageWork(image: "ellipsis")
                
                Text("Xem thêm thông tin của bạn")
                    .foregroundColor(.white)
                    .font(.subheadline.bold())
            }
            
            VStack(alignment: .leading) {
                HStack {
                    moreText(more: "Đọc truyện tranh", width: 150, height: 40)
                    moreText(more: "Học viết mã", width: 150, height: 40)
                    
                }
                
                HStack {
                    moreText(more: "Viết mã", width: 110, height: 40)
                    moreText(more: "Hoạt hình", width: 110, height: 40)
                    moreText(more: "Đọc sách", width: 120, height: 40)
                    
                }
            }
            
            VStack(alignment: .leading) {
                Image(systemName: "plus")
                    .foregroundColor(.white)
                    .frame(width: 90, height: 150)
                    .background(Color("dark_2"))
                    .cornerRadius(10)
            }.padding(.vertical, 10)
            
            Button("Chỉnh sửa chi tiết công khai") {
                
            }
            .frame(width: 380, height: 40)
            .font(.caption.bold())
            .foregroundColor(.white)
            .background(Color("blue_light"))
            .cornerRadius(10)
            
            Rectangle()
                .foregroundColor(Color("dark_2"))
                .frame(width: 380, height: 1)
                .padding(5)
            
        }
        .offset(x: 0, y: -80)
    }
}

struct WorkView_Previews: PreviewProvider {
    static var previews: some View {
        WorkView()
    }
}
