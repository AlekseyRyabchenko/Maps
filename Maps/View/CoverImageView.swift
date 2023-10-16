//
//  CoverImageView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 06.10.2023.
//

import SwiftUI

struct CoverImageView: View {
    // MARK: - Properties
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK: - Body
    
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //: TabView
        .tabViewStyle(PageTabViewStyle())
    }
}
// MARK: - Preview

#Preview {
    CoverImageView()
}
