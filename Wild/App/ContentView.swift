//
//  ContentView.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import SwiftUI

struct ContentView: View {
    
    let animal: [AnimalModel] = Bundle.main.decode("animals.json")
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    @State private var isGridViewActive: Bool = false

    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "circle.grid.2x1"
    
    var body: some View {
        
        // MARK: - BODY
        
        NavigationView {
          Group {
            if !isGridViewActive {
              List {
                CoverImageView()
                  .frame(height: 300)
                  .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animal) { animal in
                  NavigationLink(destination: AnimalDetailView(animal: animal)) {
                    AnimalListItemView(animal: animal)
                  } //: LINK
                } //: LOOP
              } //: LIST
            } else {
              ScrollView(.vertical, showsIndicators: false) {
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                  ForEach(animal) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                      AnimalGridItemView(animal: animal)
                    } //: LINK
                  } //: LOOP
                } //: GRID
                .padding(10)
                .animation(.easeIn)
              } //: SCROLL
            } //: CONDITION
          } //: GROUP
          .navigationBarTitle("Africa", displayMode: .large)
          .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
              HStack(spacing: 16) {
                // LIST
                Button(action: {
                  print("List view is activated")
                  isGridViewActive = false
                  haptics.impactOccurred()
                }) {
                  Image(systemName: "square.fill.text.grid.1x2")
                    .font(.title2)
                    .foregroundColor(isGridViewActive ? .primary : .accentColor)
                }
                
                // GRID
                Button(action: {
                  print("Grid view is activated")
                  isGridViewActive = true
                  haptics.impactOccurred()
                  gridSwitch()
                }) {
                  Image(systemName: toolbarIcon)
                    .font(.title2)
                    .foregroundColor(isGridViewActive ? .accentColor : .primary)
                }
              } //: HSTACK
            } //: BUTTONS
          } //: TOOLBAR
        } //: NAVIGATION
      }
    
    
    // MARK: - Functions
    
    func gridSwitch(){
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        switch gridColumn{
        case 1:
            toolbarIcon = "circle.grid.2x1.fill"
        case 2:
            toolbarIcon = "circle.grid.2x2.fill"
        case 3:
            toolbarIcon = "circle.hexagongrid.fill"
        default:
            toolbarIcon = "circle.hexagongrid.fill"
        }
        
    }
}

#Preview {
    ContentView()
}
