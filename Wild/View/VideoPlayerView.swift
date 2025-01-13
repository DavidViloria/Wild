//
//  VideoPlayerView.swift
//  Wild
//
//  Created by David Viloria Ortega on 13/01/25.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
  // MARK: - PROPERTIES
  
  var videoSelected: String
  var videoTitle: String

  // MARK: - BODY

  var body: some View {
    VStack {
      VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
         // Text(videoTitle)
      }
      .overlay(
        Image("logo")
          .resizable()
          .scaledToFit()
          .frame(width: 42, height: 42)
          .padding(.top, 6)
          .padding(.horizontal, 8)
        , alignment: .topTrailing
      )
    } //: VSTACK
    .accentColor(.accentColor)
    .navigationBarTitle(videoTitle, displayMode: .inline)
  }
}

// MARK: - PREVIEW

struct VideoPlayerView_Previews: PreviewProvider {
  static var previews: some View {
    NavigationView {
      VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
  }
}
