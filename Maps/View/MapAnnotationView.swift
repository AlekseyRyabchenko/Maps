//
//  MapAnnotationView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 11.10.2023.
//

import SwiftUI

struct MapAnnotationView: View {
    // MARK: - Properties
    var location: NationalParkLocation
    
    @State private var animation: Double = 0.0
    
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                .fill(Color.accentColor)
                .frame(width: 56, height: 56)
            
            RoundedRectangle(cornerSize: CGSize(width: 8, height: 8))
                .stroke(Color.accentColor, style: .init(lineWidth: 2))
                .frame(width: 54, height: 54, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - (animation))
            
            Image(location.image)
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50, alignment: .center)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        } //: ZStack
        .onAppear {
            withAnimation(Animation.easeInOut(duration: 2).repeatForever(autoreverses: false)) {
                animation = 2
            }
        }
    }
}
// MARK: - Preview

struct MapAnnotationView_Previews: PreviewProvider {
    static var locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    static var previews: some View {
        MapAnnotationView(location: locations[0])
    }
}
