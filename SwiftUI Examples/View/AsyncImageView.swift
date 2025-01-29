//
//  AsyncImage.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/29/25.
//

import SwiftUI

extension Image {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
            .padding(40)
    }
    
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundColor(.purple)
    }
}

struct AsyncImageView: View {
    private let imageURL: String = "https://credo.academy/credo-academy@3x.png"
    
    var body: some View {
        //       1. AsyncImage(url: URL(string: imageURL))
        
        AsyncImage(url: URL(string: imageURL), transaction: Transaction(animation: .spring(response: 0.5, dampingFraction: 0.6, blendDuration: 0.25))) { phase in
            switch phase {
            case .empty:
                // Показываем placeholder
                ProgressView() // Индикатор загрузки
            case .success(let image):
                // Показываем загруженное изображение
                image.imageModifier()
//                    .transition(.move(edge: .bottom))
//                    .transition(.slide)
                    .transition(.scale)
            case .failure:
                // Показываем сообщение об ошибке
                Image(systemName: "xmark.circle").iconModifier()
            @unknown default:
                EmptyView()
            }
        }
    }
}

#Preview {
    AsyncImageView()
}
