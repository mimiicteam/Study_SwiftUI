//
//  GeometryReaderView.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 02/05/2022.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
        GeometryReader { geo in
            Image("armstrong")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
                .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

struct GeometryReaderView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReaderView()
    }
}
