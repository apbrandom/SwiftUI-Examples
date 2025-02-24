//
//  MainView.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/29/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationSplitView {
            VStack {
                NavigationLink( destination: AsyncImageView()) {
                    DefaultButtonView(title: "Async Image View")
                }
                NavigationLink( destination: ListItemView()) {
                    DefaultButtonView(title: "List Item View")
                }
                NavigationLink( destination: HikeView()) {
                    DefaultButtonView(title: "Hike View")
                }
            }
        } detail: {
            Text("Detail")
        }
    }
}


#Preview {
    MainView()
}
