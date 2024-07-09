//
//  HomeView.swift
//  Restart_SwiftUI
//
//  Created by KS on 2024/07/02.
//

import SwiftUI

struct HomeView: View {

    @AppStorage("onboarding") var isOnboardingViewActive = false
    @State private var isAnimating: Bool = false

    var body: some View {
        VStack(spacing: 20) {

            // MARK: - HEADER

            Spacer()

            ZStack {

                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
                    .offset(y: isAnimating ? 35 : -35)
                    .animation(Animation.easeInOut(duration: 4).repeatForever()
                               , value: isAnimating)
                .padding()
            }

            // MARK: - CENTER

            Text("I woudl like to know the time beggin. That begin of universe?")
                .font(.title)
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .multilineTextAlignment(.center)
                .padding()

            // MARK: - FOOTER

            Spacer()


            Button {
                isOnboardingViewActive = true
            } label: {
                Image(systemName: "arrow.circlepath")
                    .imageScale(.large)

                Text("Restart")
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.bold)
            }
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5, execute: {
                isAnimating = true
            })
        }
    }
}

#Preview {
    HomeView()
}
