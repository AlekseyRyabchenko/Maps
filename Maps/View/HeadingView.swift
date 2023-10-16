//
//  HeadingView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 07.10.2023.
//

import SwiftUI

struct HeadingView: View {
    // MARK: - Properties
    
    var headingImage: String
    var headingText: String
    
    // MARK: - Body
    
    var body: some View {
        HStack {
            Image(systemName: headingImage)
                .foregroundStyle(.accent)
                .imageScale(.large)
            
            Text(headingText)
                .font(.title3)
                .fontWeight(.bold)
        }
        .padding(.vertical)
    }
}
// MARK: - Preview

#Preview {
    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
}
