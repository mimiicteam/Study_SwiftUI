//
//  HeadBar.swift
//  FacebookApp
//
//  Created by NGUYEN MINH DUC on 20/04/2022.
//

import SwiftUI

struct HeadBar: View {
    var body: some View {
        HStack {
            Image(systemName: "chevron.backward")
                .foregroundColor(.white)
                .padding(.horizontal, 20)
            Text("Nguyễn Đức")
                .foregroundColor(.white)
                .font(.subheadline.bold())
                .padding(.horizontal, 80)
            Image(systemName: "applepencil")
                .foregroundColor(.white)
            Image(systemName: "magnifyingglass")
                .foregroundColor(.white)
                .padding(.horizontal, 20)
        }
    }
}

struct HeadBar_Previews: PreviewProvider {
    static var previews: some View {
        HeadBar()
    }
}
