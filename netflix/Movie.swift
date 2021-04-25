//
//  Movie.swift
//  netflix
//
//  Created by Alessandro Gentil on 22/04/21.
//

import Foundation

struct Movie: Identifiable {
    var id: String
    var name: String
    var thumbnailURL: URL
    
    var categories: [String]
}
