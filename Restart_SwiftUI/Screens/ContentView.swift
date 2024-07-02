//
//  ContentView.swift
//  Restart_SwiftUI
//
//  Created by KS on 2024/07/02.
//

import SwiftUI

struct ContentView: View {
    // Userdefaults
    @AppStorage("onboarding") var isOnboardingViewActive = true

    var body: some View {
        ZStack {
            if isOnboardingViewActive {
                OnboardingView()
            } else {
                HomeView()
            }
        }
    }
}

#Preview {
    ContentView()
}
