//
//  MapView.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 05.10.2023.
//

import SwiftUI
import MapKit

struct MapView: View {
    // MARK: - Properties
    
    @State private var region: MKCoordinateRegion = {
        var mapCoordinates = CLLocationCoordinate2D(latitude: 6.600286, longitude: 16.4377599)
        var mapZoomLevel = MKCoordinateSpan(latitudeDelta: 70.0, longitudeDelta: 70.0)
        var mapRegion = MKCoordinateRegion(center: mapCoordinates, span: mapZoomLevel)
        
        return mapRegion
    }()
    
    let locations: [NationalParkLocation] = Bundle.main.decode("locations.json")
    
    // MARK: - Body
    
    var body: some View {
        
        // MARK: - No 1 Basic map
//        Map(coordinateRegion: $region)
        
        // MARK: - No 2 Advanced map
        Map(coordinateRegion: $region, annotationItems: locations, annotationContent: { item in
            
            //: (A) Pin: Old Style (always static)
//            MapPin(coordinate: item.location, tint: .accent)
            
            //: (B) Marker: New Style (always static)
//            MapMarker(coordinate: item.location, tint: .accent)
            
            //: (C) Custom annotation (it could be interactive)
//            MapAnnotation(coordinate: item.location) {
//                Image("logo")
//                    .resizable()
//                    .scaledToFit()
//                    .frame(width: 32, height: 32, alignment: .center)
//                    .clipShape(RoundedRectangle(cornerRadius: 5))
//            } //: Annotation
            
            //: (D) Custom advanced annotation (it could be interactive)
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(location: item)
            }
        })  //: Map
        .overlay(
            HStack(alignment: .center, spacing: 12) {
                Image("compass")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50, alignment: .center)
                
                VStack(alignment: .leading, spacing: 3) {
                    HStack {
                        Text("Долгота:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.latitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                    
                    Divider()
                    
                    HStack {
                        Text("Широта:")
                            .font(.footnote)
                            .fontWeight(.bold)
                            .foregroundStyle(.accent)
                        Spacer()
                        Text("\(region.center.longitude)")
                            .font(.footnote)
                            .foregroundStyle(.white)
                    }
                } //: VStack
            } //: HStack
                .padding(.vertical, 12)
                .padding(.horizontal, 16)
                .background(
                    Color.black
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        .opacity(0.6)
                )
                .padding()
            , alignment: .top
        )
    }
}
// MARK: - Preview
#Preview {
    MapView()
}
