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
        ZStack {
            Color("ColorBlue")
                .ignoresSafeArea()
            VStack {
                // MARK: - ヘッダー

                Spacer()
                VStack {
                    Text("Share.")
                        .font(.system(size: 60))
                        .fontWeight(.heavy)
                        .foregroundStyle(.white)

                    Text("""
                         It's not how much we give but how much love we put into giving.
                         """)
                    .font(.title3)
                    .fontWeight(.light)
                    .foregroundStyle(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 10)
                }

                // MARK: - センター

                ZStack {
                    ZStack {
                        Circle()
                        .stroke(.white.opacity(0.2), lineWidth: 40)
                        .padding(.horizontal, 60)

                        Circle()
                            .stroke(.white.opacity(0.2), lineWidth: 80)
                            .padding(.horizontal, 60)
                    }

                    Image("character-1")
                        .resizable()
                        .scaledToFit()
                }

                Spacer()

                // MARK: - フッター

                ZStack {
                    Capsule()
                        .fill(.white.opacity(0.2))

                    Capsule()
                        .fill(.white.opacity(0.2))
                        .padding(8)


                    Text("Get Started")
                        .font(.system(.title, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .offset(x: 20)

                    HStack {
                        Capsule()
                            .fill(Color("ColorRed"))
                            .frame(width: 80)
                        Spacer()
                    }

                    HStack {
                        ZStack {
                            Circle()
                                .fill(Color("ColorRed"))
                            Circle()
                                .fill(.black.opacity(0.15))
                                .padding(8)
                            Image(systemName: "chevron.right.2")
                                .font(.system(size: 18, weight: .bold))
                        }
                        .foregroundStyle(.white)
                        .frame(width: 80, height: 80, alignment: .center)
                        .onTapGesture {
                            isOnboardingViewActive = false
                        }

                        Spacer()
                    } //: HStack
                }
                .frame(height: 80, alignment: .center)
                .padding()

            } // vstack
        }// zstack
    }
}


#Preview {
    OnboardingView()
}
