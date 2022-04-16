//
//  FlowerView.swift
//  Drawing
//
//  Created by NGUYEN MINH DUC on 16/04/2022.
//

import SwiftUI

import SwiftUI

struct Flower: Shape {
    var petalOffset = -20.0
    var petalWidth = 100.0
    
    func path(in rect: CGRect) -> Path {
        var path = Path()
        
        for number in stride(from: 0, through: Double.pi * 2, by: Double.pi / 8) {
            let rotation = CGAffineTransform(rotationAngle: number)
            let position = rotation.concatenating(CGAffineTransform(translationX: rect.width / 2, y: rect.height / 2))
            let originalPetal = Path(ellipseIn: CGRect(x: petalOffset, y: 0, width: petalWidth, height: rect.width / 2))
            let rotatedPetal = originalPetal.applying(position)
            
            path.addPath(rotatedPetal)
        }
        
        return path
    }
}

struct FlowerView: View {
    @State private var petalOffset = -20.0
    @State private var petalWidth = 100.0
    
    fileprivate func TextSlider(textTitle: String, value: String) -> some View {
        return Text("\(textTitle): \(value)")
            .font(.subheadline.bold())
            .foregroundColor(.black)
            .frame(width: 120, height: 40)
            .background(.white)
            .cornerRadius(40)
    }
    
    var body: some View {
        VStack {
            Spacer()
            
            Flower(petalOffset: petalOffset, petalWidth: petalWidth)
//                .frame(width: 300, height: 300)
                .fill(.white, style: FillStyle(eoFill: true))
//                .stroke(.orange, lineWidth: 3)
            
            Spacer()
            
            TextSlider(textTitle: "Offset", value: String(format: "%.2f", petalOffset))
            Slider(value: $petalOffset, in: -40...40)
                .padding([.horizontal, .bottom])
            
            TextSlider(textTitle: "Width", value: String(format: "%.2f", petalWidth))
            Slider(value: $petalWidth, in: 0...100)
                .padding(.horizontal)
        }
    }
}

struct FlowerView_Previews: PreviewProvider {
    static var previews: some View {
        FlowerView()
    }
}
