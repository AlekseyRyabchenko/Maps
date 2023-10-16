//
//  ExternalWeblinkView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 08.10.2023.
//

import SwiftUI

struct ExternalWeblinkView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        Group {
            HStack {
                Link(destination: (URL(string: animal.link))!) {
                    Image(systemName: "globe")
                    Text("Wikipedia")
                }
                .foregroundStyle(Color.blue)
                Spacer()
                
                Text(animal.name)
            } //: HStack
            .padding()
            .foregroundStyle(Color.accent)
        } //: Group
    }
}
// MARK: - Preview

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationStack {
            ExternalWeblinkView(animal: animals[0])
        }
    }
}


