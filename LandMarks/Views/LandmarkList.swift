//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Jonatan Mora Escareño on 27/01/24.
//

import SwiftUI


struct LandmarkList: View {
    @State private var showFavoritesonly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter{ landmark in (!showFavoritesonly || landmark.isFavorite)
            
        }
    }

    var body: some View {
        
        NavigationSplitView {
            List{
                Toggle(isOn: $showFavoritesonly, label: {
                    Text("Favorites only")
                })
                ForEach(filteredLandmarks) { landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkRow(landmark: landmark)
                    }
                    
                }
                .animation(.default, value: filteredLandmarks)
                .navigationTitle("Landmarks")
            }
        } detail: {
            Text("Select a Landmark")
        }
    }
}


#Preview {
    LandmarkList()
}
