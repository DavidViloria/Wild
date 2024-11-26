//
//  VideoListView.swift
//  Animals
//
//  Created by David Viloria Ortega on 23/09/24.
//

import SwiftUI

struct VideoListView: View {
    
    var videos : [Video] = Bundle.main.decode("videos.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    VideoListItemView(video: item)
                        .padding(.vertical, 12)
                }//: Loop
                .listStyle(.insetGrouped)
            }
        }//: NavigationView
    }
}

#Preview {
    VideoListView()
}
