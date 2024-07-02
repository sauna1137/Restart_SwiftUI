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
        VStack {
            Text("Home")
                .font(.largeTitle)

            Button {
                isOnboardingViewActive = true
            } label: {
                Text("Restart")
            }
        }
    }
}

#Preview {
    HomeView()
}
