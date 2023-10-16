//
//  InsertFactView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 07.10.2023.
//

import SwiftUI

struct InsertFactView: View {
    // MARK: - Properties
    
    let animal: Animal
    
    // MARK: - Body
    
    var body: some View {
        GroupBox {
            TabView {
                ForEach(animal.fact, id: \.self) { item in
                    Text(item)
                } //: ForEach
            } //: TabView
            .tabViewStyle(PageTabViewStyle())
            .frame(minWidth: 148, idealHeight: 168, maxHeight: 180)
        } //: GroupBox
    }
}
// MARK: - Preview

struct InsertFactView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationStack {
            InsertFactView(animal: animals[0])
        }
    }
}
