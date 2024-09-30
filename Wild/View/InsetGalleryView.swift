//
//  InsetGalleryView.swift
//  Wild
//
//  Created by David Viloria Ortega on 28/09/24.
//

import SwiftUI

struct InsetGalleryView: View {
    
    let animal: AnimalModel
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 12) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//: Loop
            }//: Hstack
        }//: ScrollView
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [AnimalModel] = Bundle.main.decode("animals.json")
  
  static var previews: some View {
      InsetGalleryView(animal: animals[0])
          .previewLayout(.sizeThatFits)
          .padding()
  }
}
