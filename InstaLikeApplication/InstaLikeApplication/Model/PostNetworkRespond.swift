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
    let url: URL
    let downloadUrl: URL
    var image: UIImage?

    enum CodingKeys: String, CodingKey {
        case id, author, width, url
        case downloadUrl = "download_url"
    }

    init(id: String, author: String, width: Int, url: URL, downloadUrl: URL, image: UIImage) {
        self.id = id
        self.author = author
        self.width = width
        self.url = url
        self.downloadUrl = downloadUrl
        self.image = image
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try container.decode(String.self, forKey: .id)
        self.author = try container.decode(String.self, forKey: .author)
        self.width = try container.decode(Int.self, forKey: .width)
        self.url = try container.decode(URL.self, forKey: .url)
        self.downloadUrl = try container.decode(URL.self, forKey: .downloadUrl)

        let data = try Data(contentsOf: self.downloadUrl)
        self.image = UIImage(data: data)
    }
}
