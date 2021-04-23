//
//  HomeVM.swift
//  netflix
//
//  Created by Alessandro Gentil on 22/04/21.
//

import Foundation

class HomeVM: ObservableObject {
    
    // String == Category
    @Published var movies:[String:[Movie]] = [:]
    
    public var allCategories:[String]{
        movies.keys.map({String($0)})
    }
    
    public func getMovie(forCat cat: String) -> [Movie]{
        return movies[cat] ?? []
    }
    
    init() {
        setupMovies()
    }
    
    func setupMovies() {
        movies["Trending Now"] = exampleMovies
        movies["New Releases"] = exampleMovies.shuffled()
        movies["Stand-Up Comedy"] = exampleMovies.shuffled()
        movies["Whatch It Again"] = exampleMovies.shuffled()
        movies["Sci-Fi Movies"] = exampleMovies.shuffled()
    }
}
