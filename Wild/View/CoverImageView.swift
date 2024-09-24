//
//  CoverImages.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import SwiftUI

struct CoverImageView: View {
    
    let coverImages: [CoverImage] = Bundle.main.decode(file: "covers.json")
    var body: some View {
        TabView{
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }//: LOOP
        }.tabViewStyle(.page)
    }
}

#Preview(traits: .fixedLayout(width: 400, height: 300)) {
    CoverImageView()
    
}
