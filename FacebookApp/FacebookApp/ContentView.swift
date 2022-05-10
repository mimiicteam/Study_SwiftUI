//
//  ContentView.swift
//  FacebookApp
//
//  Created by NGUYEN MINH DUC on 19/04/2022.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView(.vertical) {
            VStack {
                HeadBar()
                
                StatusView()
                
                ButtonStatusView()
                
                WorkView()
                
                FriendView()

                Spacer()
            }
        }
        .background(Color("dark"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
//            .preferredColorScheme(.dark)
    }
}
