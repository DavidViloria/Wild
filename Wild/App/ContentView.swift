//
//  ContentView.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        
        NavigationView {
            List{
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            .navigationTitle("Africa")
        }//: Navigation
    }
}

#Preview {
    ContentView()
}
