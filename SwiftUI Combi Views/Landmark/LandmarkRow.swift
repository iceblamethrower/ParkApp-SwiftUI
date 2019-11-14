//
//  LandmarkRow.swift
//  SwiftUI Combi Views
//
//  Created by Roman Gorshkov on 13.11.2019.
//  Copyright © 2019 Roman Gorshkov. All rights reserved.
//

import SwiftUI

struct LandmarkRow: View {
    var landmark: Landmark
    var body: some View {
        HStack(alignment: .bottom, spacing: 0.0) {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
                .padding()
            Spacer()
            if landmark.isFavorite {
                VStack {
                    Image(systemName: "star.fill")
                        .padding(.leading)
                        .imageScale(.medium)
                        .foregroundColor(.yellow)
                }.padding()
            }
        }
        .padding(0.0)
    }
}

struct LandmarkRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
