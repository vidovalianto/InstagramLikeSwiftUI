//
//  StoryNetworkRespond.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/16/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Combine
import Foundation

class StoryNetworkRespond: Codable {
    var id: String
    var author: String
    var height: Int
    var download_url: String

    init(id: String, author: String, height: Int, download_url: String){
        self.id = id
        self.author = author
        self.height = height
        self.download_url = download_url
    }
}
