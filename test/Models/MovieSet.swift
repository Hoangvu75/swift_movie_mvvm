//
//  Movie.swift
//  test
//
//  Created by Vu Huy Hoang on 26/12/2022.
//

import Foundation

struct MovieSetResponse: Codable {
    let results: [MovieSet]
}

struct MovieSet: Codable {
    let adult: Bool?
    let backdropPath: String?
    let id: Int?
    let title, name, originalLanguage, originalTitle: String?
    let overview, posterPath, mediaType: String?
    let genreIDS: [Int]?
    let popularity: Double?
    let firstAirDate: String?
    let releaseDate: String?
    let video: Bool?
    let voteAverage: Double?
    let voteCount: Int?
    let originCountry: [String]?

    enum CodingKeys: String, CodingKey {
        case adult
        case backdropPath = "backdrop_path"
        case id, title, name
        case originalLanguage = "original_language"
        case originalTitle = "original_title"
        case overview
        case posterPath = "poster_path"
        case mediaType = "media_type"
        case genreIDS = "genre_ids"
        case popularity
        case firstAirDate = "first_air_date"
        case releaseDate = "release_date"
        case video
        case voteAverage = "vote_average"
        case voteCount = "vote_count"
        case originCountry = "origin_country"
    }
}
