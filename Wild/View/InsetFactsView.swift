//
//  InsetFactsView.swift
//  Wild
//
//  Created by David Viloria Ortega on 29/09/24.
//

import SwiftUI

struct InsetFactsView: View {
    
    let animal: AnimalModel
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                }

            }//:Tabview
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight: 148, idealHeight: 168, maxHeight: 180)
        }//:GroupBox
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")

    InsetFactsView(animal: animals[0])
        .padding()
}
