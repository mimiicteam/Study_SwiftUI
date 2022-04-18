//
//  SpecialEffects.swift
//  Drawing
//
//  Created by NGUYEN MINH DUC on 19/04/2022.
//

import SwiftUI

struct SpecialEffects: View {
    @State private var amount = 0.0
    var body: some View {
        VStack {
            Image("singapore")
                .resizable()
                .scaledToFit()
                .frame(width: 250, height: 250)
                .saturation(amount)
                .blur(radius: (1-amount) * 20)
            
            
//            ZStack {
//                Circle()
//                    .fill(.red)
//                    .frame(width: 200 * amount)
//                    .offset(x: -50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
//                    .fill(.green)
//                    .frame(width: 200 * amount)
//                    .offset(x: 50, y: -80)
//                    .blendMode(.screen)
//
//                Circle()
//                    .fill(.blue)
//                    .frame(width: 200 * amount)
////                    .offset(x: -50, y: -80)
//                    .blendMode(.screen)
//            }
//            .frame(width: 300, height: 300)
            
            Slider(value: $amount)
                .padding()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.black)
        .ignoresSafeArea()
    }
}

struct SpecialEffects_Previews: PreviewProvider {
    static var previews: some View {
        SpecialEffects()
    }
}
