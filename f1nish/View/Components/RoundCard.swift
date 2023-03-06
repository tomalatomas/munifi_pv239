//
//  RaceCard.swift
//  f1nish
//
//  Created by Tomáš Tomala on 04.03.2023.
//

import SwiftUI

struct RoundCard: View {
    let round: Round
    
    var body: some View {
        VStack {
            CardBanner(color: Color("ContentBackground"), number: nil, mainImage: "bahrain", leftImage: nil)
            Spacer()
        }
        .background(Color("TypographyReverse"))
        .cornerRadius(15)
        .padding(10)
    }
}

struct RoundCard_Previews: PreviewProvider {
    static var previews: some View {
        RoundCard(round: Round(roundNumber: 1, events: [], location: "Bahrain", trackName: "Bahrain", trackImage: "bahrain", flag: "flagbahrain"))
            .background(Color("Background").ignoresSafeArea())
        
    }
}
