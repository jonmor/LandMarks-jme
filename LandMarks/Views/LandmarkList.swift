//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Jonatan Mora Escareño on 27/01/24.
//

import SwiftUI


struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}


#Preview {
    LandmarkList()
}
