//
//  MissionView.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 11/04/2022.
//

import SwiftUI

struct MissionView: View {
    
    let mission: Missions
    var body: some View {
        GeometryReader { geometry in
            ScrollView {
                VStack {
                    Image(mission.image)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: geometry.size.width * 0.6)
                        .padding(.top)
                    
                    Text(mission.displayName)
                        .foregroundColor(.black)
                        .font(.subheadline.bold())
                        .frame(width: 100, height: 30)
                        .background(.white)
                        .cornerRadius(30)
                        .padding(5)
                    
                    Text(mission.formattedLaunchDate)
                        .foregroundColor(.white)
                        .padding(5)
                    
                    VStack(alignment: .leading) {
                        Text("Mission Hightlights")
                            .foregroundColor(.white)
                            .font(.title.bold())
                            .padding(.bottom, 5)
                        
                        Text(mission.description)
                            .foregroundColor(.white)
                    }
                    .padding(.horizontal)
                }
                .padding(.bottom)
            }
        }
        .navigationTitle(mission.displayName)
        .navigationBarTitleDisplayMode(.inline)
        .background(.darkBackground)
    }
}

struct MissionView_Previews: PreviewProvider {
    static let missions: [Missions] = Bundle.main.decode("missions.json")
    
    static var previews: some View {
        MissionView(mission: missions[0])
            .preferredColorScheme(.dark)
    }
}
