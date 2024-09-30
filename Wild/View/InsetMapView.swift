//
//  InsetMapView.swift
//  Wild
//
//  Created by David Viloria Ortega on 29/09/24.
//

import SwiftUI
import MapKit

struct InsetMapView: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2DMake(6.00286, 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(alignment: .topTrailing) {
                NavigationLink(destination: MapView()){
                    HStack{
                        Image(systemName: "mappin.circle")
                            .foregroundStyle(.white)
                            .imageScale(.large)
                        Text("Locations")
                            .foregroundStyle(.accent)
                            .fontWeight(.semibold)
                    }//:Hstack
                    .padding(.vertical, 10)
                    .padding(.horizontal, 14)
                    .background(
                        Color.black.opacity(0.3)
                            .cornerRadius(8)
                    )
                }
                .padding(12)
                //, alignment: .topTrailing
                
                
            }
            .frame(height: 256)
            .cornerRadius(12)
        
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    InsetMapView()
        .padding()
}
