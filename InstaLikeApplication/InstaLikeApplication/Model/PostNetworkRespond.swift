//
//  NetworkRespond.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/16/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation

import Foundation
import SwiftUI

final class PostNetworkRespond: Codable, Identifiable {
    let id: String
    let author: String
    let width: Int
    let url: String
    let download_url: String

    init(id: String, author: String, width: Int, url: String, download_url: String) {
        self.id = id
        self.author = author
        self.width = width
        self.url = url
        self.download_url = download_url
    }
//
//        enum CodingKeys: String, CodingKey {
//            case id = "id"
//            case author = "author"
//            case width = "width"
//            case url = "url"
//            case download_url = "download_url"
//            case image = "image"
//        }

}
