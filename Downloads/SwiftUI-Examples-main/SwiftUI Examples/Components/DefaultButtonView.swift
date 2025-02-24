//
//  DefaultButtonView.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/29/25.
//

import SwiftUI

struct DefaultButtonView: View {
    var title: String
    
    var body: some View {
        Text(title)
            .padding()
            .background(.blue)
            .foregroundColor(.white)
            .cornerRadius(8)
            .shadow(radius: 8)
    }
}

#Preview {
    DefaultButtonView(title: "Default Button")
}
