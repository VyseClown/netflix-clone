//
//  Episode.swift
//  netflix
//
//  Created by Alessandro Gentil on 10/05/21.
//

import Foundation

struct Episode: Identifiable {
    var id = UUID().uuidString
    
    var name: String
    var season: String
    var thumbnailImageUrlString: String
    var description: String
    var length: Int
    
    var thumbnailURL: URL {
        return URL(string: thumbnailImageUrlString)!
    }
}
