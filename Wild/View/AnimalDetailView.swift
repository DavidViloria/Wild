//
//  AnimalDetailView.swift
//  Wild
//
//  Created by David Viloria Ortega on 28/09/24.
//

import SwiftUI

struct AnimalDetailView: View {
    let animal: AnimalModel
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            LazyVStack(alignment: .center, spacing: 20){
                //Hero image
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                //Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                //Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                    //.fontWidth(.expanded)
                    //.fontWeight(.medium)
                //Gallery
                Group{
                    HeadingView(headerImage: "photo.on.rectangle.angled", headerText: "Wildernesss in Pictures")
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                //Facts
                Group{
                    HeadingView(headerImage: "questionmark.circle", headerText: "Did you know?")
                    InsetFactsView(animal: animal)
                }
                .padding(.horizontal)
                //Map
                Group{
                    HeadingView(headerImage: "map", headerText: "National Parks")
                    InsetMapView()
                }
                .padding(.horizontal)
               
                
                //Description
                Group{
                    HeadingView(headerImage: "info.circle", headerText: "All about \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                        .padding()
                }
                .padding(.horizontal)
                
                //Link
                Group{
                    HeadingView(headerImage: "books.vertical", headerText: "Learn more about \(animal.name)")
                    ExternalWebLinkView(animal: animal)
                    
                }
                .padding()
                .padding(.horizontal)
                
            }
            .navigationTitle("Learn About \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        }//:ScrollView
    }
}

#Preview {
    let animals: [AnimalModel] = Bundle.main.decode("animals.json")
    NavigationView {
        AnimalDetailView(animal: animals[0])
    }
}
