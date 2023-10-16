//
//  AnimalDetailView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 07.10.2023.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // Hero
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // Title
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundStyle(.primary)
                    .background(Color.accentColor
                        .frame(height: 6)
                        .offset(y: 24))
                
                // Headline
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundStyle(.accent)
                    .padding(.horizontal)
                
                // Gallery
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Дикая природа в Фото")
                    
                    InsetGalleryView(animal: animal)
                }
                .padding(.horizontal)
                
                // Facts
                Group {
                    HeadingView(headingImage: "questionmark.circle", headingText: "А Вы знали?")
                    InsertFactView(animal: animal)
                }
                .padding(.horizontal)
                
                // Description
                Group {
                    HeadingView(headingImage: "info.circle", headingText: "Все о \(animal.name)")
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                }
                .padding(.horizontal)
                
                // Map
                Group {
                    HeadingView(headingImage: "map", headingText: "Национальные парки")
                    
                    InsertMapView()
                }
                .padding(.horizontal)
                
                // Link
                Group {
                    HeadingView(headingImage: "books.vertical", headingText: "Узнать больше")
                    
                    ExternalWeblinkView(animal: animal)
                }
                .padding(.horizontal)
                
            } //: VStack
            .navigationTitle("Узнайте о \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: ScrollView
    }
}
// MARK: - Preview

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationStack {
            AnimalDetailView(animal: animals[0])
        }
    }
}
