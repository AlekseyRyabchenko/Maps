//
//  MarkAndCommentary.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 06.10.2023.
//

import SwiftUI

struct MarkAndCommentary: View {
    let animal: Animal
    // MARK: - Properties
    
    
    // MARK: - Body
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}
// MARK: - Preview

struct MarkAndCommentary_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationStack {
            MarkAndCommentary(animal: animals[0])
        }
    }
}
