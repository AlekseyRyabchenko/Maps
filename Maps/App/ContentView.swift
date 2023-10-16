//
//  ContentView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 05.10.2023.
//

import SwiftUI

struct ContentView: View {
    // MARK: - Properties
    
    @State var animals: [Animal] = Bundle.main.decode("animals.json")
    
    // MARK: - Body
    
    var body: some View {
        NavigationStack {
            ToggleLanguage()
                .frame(maxWidth: .infinity, alignment: .trailing)
            List {
                CoverImageView()
                    .frame(height: 300)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                
                ForEach(animals) { animal in
                    NavigationLink(destination: AnimalDetailView(animal: animal)) {
                        AnimalListItemView(animal: animal)
                    } //: NavigationLink
                } //: ForEach
            } //: List
            .navigationTitle("My Project")
            .navigationBarTitleDisplayMode(.large)
        } //: NavigationStack
    }
}
// MARK: - Preview

#Preview {
    ContentView()
}
