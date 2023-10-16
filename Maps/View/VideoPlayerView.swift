//
//  VideoPlayerView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 09.10.2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - Properties
    
    var videoSelected: String
    var videoTitle: String
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")) {
//                Text(videoTitle)
            }
            .overlay(
            Image("logo")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .clipShape(RoundedRectangle(cornerRadius: 5))
                .padding(.top, 6)
                .padding(.horizontal, 8)
            , alignment: .topLeading
            )
        } //: VStack
        .navigationTitle(videoTitle)
        .navigationBarTitleDisplayMode(.inline)
    }
}
// MARK: - Preview

#Preview {
    NavigationView {
        VideoPlayerView(videoSelected: "lion", videoTitle: "Lion")
    }
}
