//
//  VideoModel.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 09.10.2023.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // Computed Property (Вычисляемое свойство)
    var thumbnail: String {
        "video-\(id)"
    }
}
