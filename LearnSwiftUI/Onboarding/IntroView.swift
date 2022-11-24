//
//  IntroView.swift
//  LearnSwiftUI
//
//  Created by Sukhmani Kaur on 24/11/22.
//

import SwiftUI

struct IntroView: View {
    
    @AppStorage("Signed_in") var currentUserSignedIn: Bool = false
    
    var body: some View {
        ZStack {
            // background view
            RadialGradient(gradient: Gradient(colors: [Color.red, Color.orange]),
                center: .topLeading,
                startRadius: 5,
                endRadius: UIScreen.main.bounds.height)
                .ignoresSafeArea()
            
            if currentUserSignedIn {
                ProfileView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .bottom),
                        removal: .move(edge: .top)))
            } else {
                OnboardingView()
                    .transition(.asymmetric(
                        insertion: .move(edge: .top),
                        removal: .move(edge: .bottom)))
            }

        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
