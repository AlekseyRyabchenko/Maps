//
//  InsertMapView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 08.10.2023.
//

import SwiftUI
import MapKit

struct InsertMapView: View {
    // MARK: - Properties
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599), span: MKCoordinateSpan(latitudeDelta: 60.0, longitudeDelta: 60.0))
    
    // MARK: - Body
    
    var body: some View {
        Map(coordinateRegion: $region)
            .overlay(NavigationLink(destination: MapView()){
                HStack {
                    Image(systemName: "mappin.circle")
                        .foregroundStyle(Color.white)
                        .imageScale(.large)
                    
                    Text("Locations")
                        .foregroundStyle(.accent)
                        .fontWeight(.bold)
                } //: HStack
                .padding(.vertical, 10)
                .padding(.horizontal,14)
                .background(Color.black
                    .opacity(0.4)
                    .clipShape(RoundedRectangle(cornerRadius: 8)))
            } //: NavigationLink
                .padding(12)
                     ,alignment: .topTrailing
            )
            .frame(height: 256)
            .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}
// MARK: - Preview

#Preview {
    InsertMapView()
}
