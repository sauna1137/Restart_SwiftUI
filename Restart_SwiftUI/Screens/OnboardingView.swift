//
//  OnboardingView.swift
//  Restart_SwiftUI
//
//  Created by KS on 2024/07/02.
//

import SwiftUI

struct OnboardingView: View {

    @AppStorage("onboarding") var isOnboardingViewActive = true

    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding!")
                .font(.largeTitle)

            Button {
                // action
                isOnboardingViewActive = false
            } label: {
                Text("start")
            }

        }
    }
}

#Preview {
    OnboardingView()
}
