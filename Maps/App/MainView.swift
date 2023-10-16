//
//  MainView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 05.10.2023.
//

import SwiftUI

struct MainView: View {
    // MARK: - Properties
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "square.grid.2x2")
                    Text("Просмотр")
                }
            
            VideoListView()
                .tabItem {
                    Image(systemName: "play.rectangle")
                    Text("Видео")
                }
            
            MapView()
                .tabItem {
                    Image(systemName: "map")
                    Text("Локации")
                }
            
            GalleryView()
                .tabItem {
                    Image(systemName: "photo")
                    Text("Галерея")
                }
        } //: TabView
    }
}

// MARK: - Preview

#Preview {
    MainView()
}
