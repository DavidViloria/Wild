//
//  MapAnotationView.swift
//  Wild
//
//  Created by David Viloria Ortega on 13/01/25.
//

import SwiftUI

struct MapAnnotationView: View {
  // MARK: - PROPERTIES
  
  var location: NationalParkLocation
  @State private var animation: Double = 0.0
  
  // MARK: - BODY

  var body: some View {
    ZStack {
      Circle()
        .fill(Color.accentColor)
        .frame(width: 42, height: 42, alignment: .center)
      
      Circle()
        .stroke(Color.accentColor, lineWidth: 2)
        .frame(width: 42, height: 42, alignment: .center)
        .scaleEffect(1 + CGFloat(animation))
        .opacity(1 - animation)
      
      Image(location.image)
        .resizable()
        .scaledToFit()
        .frame(width: 32, height: 32, alignment: .center)
        .clipShape(Circle())
    } //: ZSTACK
    .onAppear {
      withAnimation(Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
        animation = 1
      }
    }
  }
}

// MARK: - PREVIEW

struct MapAnnotationView_Previews: PreviewProvider {
  static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
  
  static var previews: some View {
    MapAnnotationView(location: locations[0])
      .previewLayout(.sizeThatFits)
      .padding()
  }
}
