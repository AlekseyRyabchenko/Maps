//
//  VideoListView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 05.10.2023.
//

import SwiftUI

struct VideoListView: View {
    // MARK: - Properties
    
    @State var videos: [Video] = Bundle.main.decode("videosRus.json")
    
    let hapticImact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - Body
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                } //: ForEach
            } //: List
            .listStyle(InsetListStyle())
            .navigationTitle("Видео")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Shuffle video
                        videos.shuffle()
                        hapticImact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.triangle.2.circlepath")
                    }
                }
            }
        } //: NavigationView
    }
}
// MARK: - Preview

#Preview {
    VideoListView()
}
