//
//  GradientButtonStyle.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/30/25.
//

import Foundation
import SwiftUI

struct GradientButtonStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal, 30)
            .background(
                // Conditional Statment with Nil Coalescing
                // Condition ? A : B
                configuration.isPressed ?
                // A: When User pressed the Button
                LinearGradient(
                    colors: [.customGrayMedium,.customGrayLight],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                // B: When the Button is not pressed
                LinearGradient(colors: [ .customGrayLight, .customGrayMedium],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
    }
}
