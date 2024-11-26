//
//  ExternalWebLinkView.swift
//  Wild
//
//  Created by David Viloria Ortega on 29/09/24.
//

import SwiftUI

struct ExternalWebLinkView: View {
    let animal: AnimalModel
    var body: some View {
        Group {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group{
                    Image(systemName: "arrow.up.right.square")
                    if let url = URL(string: animal.link) ?? URL(string: "https://www.linkedin.com/in/davidviloria/") {
                        Link(destination: url) {
                            Text(animal.name)
                        }
                    } else {
                        Text(animal.name) // Opcionalmente, puedes manejar la situación cuando ambas URLs fallan
                    }
                }
                .foregroundStyle(.accent)
                

            }//: Hstack
        }//: Group
        .cornerRadius(12)
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    ExternalWebLinkView(animal: animals[0])
        .padding()
        .background(
            Color.gray.opacity(0.1)
        )
}
