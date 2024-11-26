//
//  VideoListView.swift
//  Animals
//
//  Created by David Viloria Ortega on 23/09/24.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos : [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 12)
                }//: Loop
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Videos")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        withAnimation {
                            videos.shuffle()
                            hapticImpact.impactOccurred()
                        }
                        
                    } label: {
                        Image(systemName: "arrow.2.squarepath")
                    }

                }
            }
        }//: NavigationView
    }
}

#Preview {
    VideoListView()
}
