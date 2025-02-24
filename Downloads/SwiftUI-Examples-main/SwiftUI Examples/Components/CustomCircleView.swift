//
//  CustomCircleView.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/30/25.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimatedGradient = false
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors:
                            [
                                .customIndigoMedium,
                                .colorSalmonLight
                            ],
                        startPoint: isAnimatedGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimatedGradient ? .bottomTrailing : .topTrailing)
                )
                .onAppear {
                    withAnimation(
                        Animation.linear(duration: 3.0)
                            .repeatForever(autoreverses: true)) {
                                isAnimatedGradient.toggle()
                            }
                }
               MotionAnimationView()
        } //: ZSTAK
        .frame(width: 256, height: 256)
    }
}

#Preview {
    CustomCircleView()
}
