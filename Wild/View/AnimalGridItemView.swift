//
//  AnimalGridItemView.swift
//  Wild
//
//  Created by David Viloria Ortega on 21/05/25.
//

import SwiftUI

struct AnimalGridItemView: View {
    let animal: AnimalModel
    var body: some View {
        Image(animal.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(11)
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    AnimalGridItemView(animal: animals[0])
        .padding()
}
