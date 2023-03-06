//
//  CardBanner.swift
//  f1nish
//
//  Created by Tomáš Tomala on 05.03.2023.
//

import SwiftUI

struct CardBanner: View {
    let color: Color
    let number: String?
    let mainImage: String
    let leftImage: String?
    
    var body: some View {
        ZStack {
            // Gradient
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.white,Color.clear, Color.clear]), startPoint: .topLeading, endPoint: .trailing))
                .opacity(0.8)
            HStack {
                if let leftImg = leftImage {
                    Image(leftImg)
                        .resizable()
                        .scaledToFit()
                        .frame(maxWidth: 150, maxHeight: 150)
                        .opacity(0.6)
                        .offset(x: 25)
                } else if let num = number{
                    Text(String(num))
                        .foregroundColor(.white)
                        .font(.custom("Formula1",fixedSize: 64))
                        .padding(.leading, 20)
                        .opacity(0.6)
                        .offset(x: 35)
                }
                Spacer()
                Image(mainImage)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 200)
                Spacer()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
        .background(color)
        .cornerRadius(15)
        .shadow(radius: 3)
        .padding(.all, 10)
    }
}

struct CardBanner_Previews: PreviewProvider {
    static var previews: some View {
        CardBanner(color: .teal, number: "1.", mainImage: "hamilton", leftImage: nil)
    }
}
