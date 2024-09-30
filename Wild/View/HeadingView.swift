//
//  HeadingView.swift
//  Wild
//
//  Created by David Viloria Ortega on 28/09/24.
//

import SwiftUI

struct HeadingView: View {
    
    var headerImage: String
    var headerText: String
    var body: some View {
        HStack {
            Image(systemName: headerImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            Text(headerText)
                .font(.title)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    HeadingView(headerImage: "photo.on.rectangle.angeld", headerText: "Wildernees in Pictures")
        .padding()
}
