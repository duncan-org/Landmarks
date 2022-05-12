//
//  landmarkList.swift
//  Landmarks
//
//  Created by Carl Duncan on 5/11/22.
//

import SwiftUI

struct LandmarkList: View {
    
    var body: some View {
        
        NavigationView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone 13 mini", "iPhone SE (3rd generation)", "iPhone 13 Pro Max"], id: \.self){ deviceName in
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
        
    }
}