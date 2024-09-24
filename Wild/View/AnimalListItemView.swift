//
//  AnimalListItemView.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import SwiftUI

struct AnimalListItemView: View {
    var body: some View {
        HStack (alignment: .center, spacing: 16) {
            Image("lion")
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            VStack(alignment: .leading, spacing: 8) {
                Text("Lion")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.accentColor)
                
                Text("King of the Jungle and King of the Wild, also known as the African Lion. The lion is the largest cat species, with a body length of up to 2.5 meters (8.2 feet) and a weight of up to 200 kilograms (440 pounds).")
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(3)
                    .padding(.trailing, 8)
            }
        }//: Hstack
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AnimalListItemView()
        .padding()
}
