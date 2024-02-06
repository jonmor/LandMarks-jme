//
//  CircleImage.swift
//  LandMarks
//
//  Created by Jonatan Mora Escareño on 27/01/24.
//

import SwiftUI


struct CircleImage: View {
    var body: some View {
        Image("turtlerock")
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}


#Preview {
    CircleImage()
}
