//
//  GlobalHelpers.swift
//  netflix
//
//  Created by Alessandro Gentil on 22/04/21.
//

import Foundation
import SwiftUI

let exampleMovie1 = Movie(
    id: UUID().uuidString,
    name: "DARK",
    thumbnailURL: URL(string: "https://picsum.photos/200/300")!,
    categories: ["Dystopian","Exciting","Suspenceful","Sci-Fi"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 1,
    defaultEpisodeinfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Loius Hofmann, Oliver Masucci, Jordis Triebel",
    promotionHeadline: "Best rated show")

let exampleMovie2 = Movie(
    id: UUID().uuidString,
    name: "Travelers",
    thumbnailURL: URL(string: "https://picsum.photos/200/300/")!,
    categories: ["Dystopian","Exciting","Suspenceful","Sci-Fi"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 2,
    defaultEpisodeinfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Loius Hofmann, Oliver Masucci, Jordis Triebel",
    promotionHeadline: "New episodes coming soon")

let exampleMovie3 = Movie(
    id: UUID().uuidString,
    name: "Community",
    thumbnailURL: URL(string: "https://picsum.photos/200/301")!,
    categories: ["Dystopian","Exciting","Suspenceful","Sci-Fi"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 3,
    defaultEpisodeinfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Loius Hofmann, Oliver Masucci, Jordis Triebel",
    promotionHeadline: "Watch Season 6 Now")

let exampleMovie4 = Movie(
    id: UUID().uuidString,
    name: "Alone",
    thumbnailURL: URL(string: "https://picsum.photos/200/302")!,
    categories: ["Dystopian","Exciting","Suspenceful","Sci-Fi"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 4,
    defaultEpisodeinfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Loius Hofmann, Oliver Masucci, Jordis Triebel")

let exampleMovie5 = Movie(
    id: UUID().uuidString,
    name: "Hannibal",
    thumbnailURL: URL(string: "https://picsum.photos/200/303")!,
    categories: ["Dystopian","Exciting","Suspenceful","Sci-Fi"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 5,
    defaultEpisodeinfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Loius Hofmann, Oliver Masucci, Jordis Triebel")

let exampleMovie6 = Movie(
    id: UUID().uuidString,
    name: "After Life",
    thumbnailURL: URL(string: "https://picsum.photos/200/304")!,
    categories: ["Dystopian","Exciting","Suspenceful","Sci-Fi"],
    year:2020,
    rating:"TV-MA",
    numberOfSeasons: 6,
    defaultEpisodeinfo: exampleEpisodeInfo1,
    creators: "Baran bo Odan, Jantje Friese",
    cast: "Loius Hofmann, Oliver Masucci, Jordis Triebel")

let exampleMovies: [Movie] = [exampleMovie1, exampleMovie2, exampleMovie3, exampleMovie4, exampleMovie5, exampleMovie6]

let exampleEpisodeInfo1 = CurrentEpisodeInfo(
    episodeName: "Beginning and Endings",
    description: "Six months after the disappearances, the police form a task. In 2052, Jonas learns that most of Winden perished in an apocalyptic event.",
    season: 2,
    episode: 1)

extension LinearGradient {
    static let blackOpacityGradient = LinearGradient(gradient: Gradient(colors: [Color.black.opacity(0.0), Color.black.opacity(0.95)]), startPoint: .top, endPoint: .bottom)
}
