//
//  GalleryView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 05.10.2023.
//

import SwiftUI

struct GalleryView: View {
    // MARK: - Properties
    
    
    // MARK: - Body
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                Text("Галерея")
                    .bold()
                    .font(.title2)
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(MotionAnimationView())
            Text("animation by A.Ryabchenko")
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                .font(.footnote)
                .foregroundStyle(.gray)
        }
    }
}
// MARK: - Preview

#Preview {
    GalleryView()
}
