//
//  Show.swift
//  SoapClient
//
//  Created by Gennady Evstratov on 2/21/18.
//  Copyright © 2018 TechPark. All rights reserved.
//

import Foundation

struct Show: Codable {

    private enum CodingKeys: String, CodingKey {
        case title
        case year
        case rating = "kinopoisk_rating"
    }

    let title: String
    let year: String
    let rating: String

    
    /*

 "sid": "425",
 "title": "The 100",
 "title_ru": "Сотня",
 "year": "2014",
 "likes": "3362",
 "episode_runtime": "43",
 "country": "US",
 "status": "0",
 "imdb_id": "tt2661044",
 "imdb_votes": "100361",
 "imdb_rating": "7.8",
 "kinopoisk_id": "733493",
 "kinopoisk_votes": "14676",
 "kinopoisk_rating": "7.518",
 "tvdb_id": "268592",
 "tvmaze_id": "6",
 "soap_rating": "0",
 "soap_votes": "0",
 "network": "The CW",
 "trailers": 1,
 "watching": 0,
 "unwatched": 0,
 "unwatched_without_subs": 0,
 "covers": {
 "small": "http://covers.soap4.me/soap/425.jpg",
 "big": "http://covers.soap4.me/soap/big/425.jpg"
 }

 */
}
