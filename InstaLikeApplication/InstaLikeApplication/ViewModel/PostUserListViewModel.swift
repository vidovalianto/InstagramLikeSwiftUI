//
//  PostUserListViewModel.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import Combine
import SwiftUI

class PostUserListViewModel: BindableObject {
    var postUserList = [PostUser]() {
        didSet {
            didChange.send(self)
        }
    }

    init() {
        let url = "https://picsum.photos/v2/list?page=2&limit=5"
        NetworkFacade().fetchPost(urlstring: url,completion: { responds in
            DispatchQueue.main.async {
                self.postUserList = responds.map { PostUser.init(postNetworkRespond: $0) }
            }
        })
    }

    let didChange = PassthroughSubject<PostUserListViewModel,Never>()
}
