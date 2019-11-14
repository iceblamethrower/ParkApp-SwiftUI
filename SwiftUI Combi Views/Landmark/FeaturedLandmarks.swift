//
//  FeaturedLandmarks.swift
//  SwiftUI Combi Views
//
//  Created by Roman Gorshkov on 14.11.2019.
//  Copyright © 2019 Roman Gorshkov. All rights reserved.
//

import SwiftUI

struct FeaturedLandmarks: View {
    var landmarks: [Landmark]
    var body: some View {
        landmarkData[0].image.resizable()
    }
}

struct FeaturedLandmarks_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedLandmarks(landmarks: landmarkData)
    }
}
