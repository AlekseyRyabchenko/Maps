//
//  InsetGalleryView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 07.10.2023.
//

import SwiftUI

struct InsetGalleryView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                } //: ForEach
            } //: HStack
        } //: ScrollView
    }
}
// MARK: - Preview

struct InsetGalleryView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationStack {
            InsetGalleryView(animal: animals[0])
        }
    }
}
