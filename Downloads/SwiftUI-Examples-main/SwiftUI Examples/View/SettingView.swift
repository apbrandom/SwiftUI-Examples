//
//  SettingView.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 2/24/25.
//

import SwiftUI

struct SettingView: View {
    var body: some View {
        List {
            //MARK: - SECTION: HEADER
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    VStack(spacing: -10) {
                        Text("HIKE")
                            .font(.system(size: 66, weight: .black))
                        Text("Editors' Choice")
                            .fontWeight(.medium)
                    }
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .customGreenLight,
                            .customGreenMedium,
                            .customGreenDark
                        ],
                        startPoint: .top,
                        endPoint: .bottom))
                .padding(.top, 8)
                
                
                VStack(spacing : 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    Text("The hike which looks gorgeous in photos but is even better once you actualy there. The hike that you hope to do again someday. \nFind the bets day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! its time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.colorGreenMedium)
                }
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
            } //:HEADER
            .listRowSeparator(.hidden)
            
            //MARK: - SECTION ICONS
            
            //MARK: - SECTION ABOUT
            
        } //: LIST
    }
}

#Preview {
    SettingView()
}
