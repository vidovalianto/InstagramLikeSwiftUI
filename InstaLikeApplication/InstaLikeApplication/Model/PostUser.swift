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
    let url: URL
    let downloadUrl: URL
    var image: UIImage = UIImage(color: .lightGray)!

    init(postNetworkRespond: PostNetworkRespond) {
        self.id = postNetworkRespond.id
        self.author = postNetworkRespond.author
        self.width = postNetworkRespond.width
        self.url = postNetworkRespond.url
        self.downloadUrl = postNetworkRespond.downloadUrl

        let data = try! Data(contentsOf: self.url)
        self.image = UIImage(data: data) ?? UIImage(color: .lightGray)!
    }
}
