//
//  StoryUser.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/16/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import SwiftUI

final class UserStory: Identifiable {
    let id: Int
    let imageUrl: String
    var image: UIImage = UIImage(color: .lightGray)!

    init(storyNetworkRespond: StoryNetworkRespond){
        if let rowId = Int(storyNetworkRespond.id) {
            id = rowId
        } else {
            self.id = 1
        }
        self.imageUrl = storyNetworkRespond.download_url
        guard let url = URL(string: imageUrl) else {
            return
        }
        let data = try! Data(contentsOf: url)
        self.image = UIImage(data: data) ?? UIImage(color: .lightGray)!
    }
}
