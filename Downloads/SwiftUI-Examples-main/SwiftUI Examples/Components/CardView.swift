//
//  CardView.swift
//  SwiftUI Examples
//
//  Created by Vadim Vinogradov on 1/29/25.
//

import SwiftUI

struct CardView: View {
    //MARK: - PROPERTIES
    
    @State private var imageNumber: Int = 1
    @State private var randomNUmber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    //MARK: - FUNCTION
    
    func randomImageNumber()  {
        print("--- BUTTON PRESSED ---")
        print("Status: Old Image Number = \(imageNumber)")
        repeat {
            randomNUmber = Int.random(in: 1...5)
            print("Action: Random Number Generated = \(randomNUmber)")
        } while randomNUmber == imageNumber

        imageNumber = randomNUmber
        print("Result: New Image Number = \(imageNumber)")
        print("--- THE END ---")
        print("\n")
    }
    
    var body: some View {
        //MARK: - CARD
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
                //MARK: - HEADER
                
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium],
                                    startPoint: .top,
                                    endPoint: .bottom)
                            )
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            print("The button was pressed.")
                            isShowingSheet.toggle()
                        } label: {
                            CustomButtonView()
                        }
                        .sheet(isPresented: $isShowingSheet) {
                            SettingView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }
                    }
                    
                    Text("Fun and enjoyable outdoor activity for friends and familes.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                        
                } //: HEADER
                .padding(.horizontal, 30)
                
                //MARK: - MAIN CONTENT
                ZStack {
                    CustomCircleView()
                    
                    Image("Images/image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                }
                
                //MARK: - FOOTER
                
                Button {
                    // ACTION: Generate a random numbers
                    randomImageNumber()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [
                                    .customGreenLight,
                                    .customGreenMedium
                                ],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                        .shadow(color: .black, radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButtonStyle())

            } //: - VSTACK
        } //: - CARD
        .frame(width: 320, height: 570)
    }
}

#Preview {
    CardView()
}
