//
//  HomeView.swift
//  Restart_SwiftUI
//
//  Created by KS on 2024/07/02.
//

import SwiftUI

struct HomeView: View {

    @AppStorage("onboarding") var isOnboardingViewActive = false

    var body: some View {
        VStack(spacing: 20) {

            // MARK: - HEADER

            Spacer()

            ZStack {

                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)

                Image("character-2")
                    .resizable()
                    .scaledToFit()
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
    }
}

#Preview {
    HomeView()
}
