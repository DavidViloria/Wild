//
//  AnimalListItemView.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import SwiftUI

struct AnimalListItemView: View {
  // MARK: - PROPERTIES
  
    let animal: AnimalModel
  // MARK: - BODY

  var body: some View {
    HStack(alignment: .center, spacing: 16) {
      Image(animal.image)
        .resizable()
        .scaledToFill()
        .frame(width: 90, height: 90)
        .clipShape(
          RoundedRectangle(cornerRadius: 12)
        )
      
      VStack(alignment: .leading, spacing: 8) {
        Text(animal.name)
          .font(.title2)
          .fontWeight(.heavy)
          .foregroundColor(.accentColor)
        
        Text(animal.headline)
          .font(.footnote)
          .multilineTextAlignment(.leading)
          .lineLimit(2)
          .padding(.trailing, 8)
      } //: VSTACK
    } //: HSTACK
  }
}

// MARK: - PREVIEW

struct AnimalListItemView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
    AnimalListItemView(animal: animals[1])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}

