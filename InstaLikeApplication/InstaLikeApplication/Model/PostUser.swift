//
//  PostUser.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import SwiftUI

final class PostUser: Identifiable {
    let id: String
    let author: String
    let width: Int
    let url: String
    let download_url: String
    var image: UIImage = UIImage(color: .lightGray)!

    init(postNetworkRespond: PostNetworkRespond) {
        self.id = postNetworkRespond.id
        self.author = postNetworkRespond.author
        self.width = postNetworkRespond.width
        self.url = postNetworkRespond.url
        self.download_url = postNetworkRespond.download_url
        guard let url = URL(string: download_url) else {
            print("no url")
            return
        }
        let data = try! Data(contentsOf: url)
        self.image = UIImage(data: data) ?? UIImage(color: .lightGray)!
    }
}
