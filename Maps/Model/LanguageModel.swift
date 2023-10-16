//
//  LanguageModel.swift
//  Maps
//
//  Created by Aleksey Ryabchenko on 10.10.2023.
//

import SwiftUI

// MARK: - Language data model

struct LanguageModel: Identifiable {
    var id = UUID()
    var json: String
    var titleContent: String
    var titlePic: String
    var titleFact: String
    var titleAllAbout: String
    var titleParks: String
    var titleLearnMore: String
    var contentTab: String
    var videoTab: String
    var mapTab: String
    var galleryTab: String
    var titleVideo: String
}
