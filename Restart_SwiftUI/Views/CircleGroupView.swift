//
//  CircleGroupView.swift
//  Restart_SwiftUI
//
//  Created by KS on 2024/07/04.
//

import SwiftUI

struct CircleGroupView: View {

    @State var shapeColor: Color
    @State var shapeOpacity: Double
    @State var isAnimating: Bool = false

    var body: some View {
        ZStack {
            Circle()
            .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 40)
            .padding(.horizontal, 60)

            Circle()
                .stroke(shapeColor.opacity(shapeOpacity), lineWidth: 80)
                .padding(.horizontal, 60)
        }
        .blur(radius: isAnimating ? 0 : 10)
        .opacity(isAnimating ? 1 : 0)
        .scaleEffect(isAnimating ? 1 : 0.5)
        .animation(.easeOut(duration: 1), value: isAnimating)
        .onAppear(perform: {
            isAnimating = true
        })
    }
}

#Preview {

    ZStack {
        Color("ColorBlue")
            .ignoresSafeArea()

        CircleGroupView(shapeColor: .white, shapeOpacity: 0.2)
    }
}
