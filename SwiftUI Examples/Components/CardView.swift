//
//  CardView.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/29/25.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(colors: [
                        Color("ColorIndigoMedium"),
                        Color("ColorSalminLight")
                    ],
                                   startPoint: .topLeading,
                                   endPoint: .bottomTrailing)
                )
                .frame(width: 256, height: 256)
            Image("Images/image-1")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    CardView()
}
