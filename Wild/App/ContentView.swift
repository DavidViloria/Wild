//
//  ContentView.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let animal: [AnimalModel] = Bundle.main.decode("animals.json")
        
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                ForEach(animal) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                        
                    }
                    .listRowBackground(Color.clear)
                    .listRowInsets(EdgeInsets(top: 10, leading: 0, bottom: 10, trailing: 0))
                }
            }
            
            .navigationTitle("Africa")
            .navigationBarTitleDisplayMode(.large)
        }//: Navigation
    }
}

#Preview {
    ContentView()
}
