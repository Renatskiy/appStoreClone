//
//  Games.swift
//  AppStoreClone
//
//  Created by Ренат Ахметгареев on 29.07.2021.
//

    

import Foundation



struct Games: Decodable {
    let feed: Feed
}



struct Feed: Decodable {
    let title: String
    let results: [FeedResult]
}



struct FeedResult: Decodable {
    let id: String
    let artistName: String
    let name: String
    let artworkUrl100: String

}


