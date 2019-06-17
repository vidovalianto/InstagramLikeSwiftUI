//
//  StoryUserViewModel.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/16/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Combine
import Foundation
import SwiftUI

class UserStoryViewModel: BindableObject {

    var userStoryList = [UserStory]() {
        didSet {
            didChange.send(self)
        }
    }

    let didChange = PassthroughSubject<UserStoryViewModel,Never>()

    init() {
        NetworkFacade().fetchStories(urlString: "https://picsum.photos/v2/list?page=1&limit=10") { story in
                DispatchQueue.main.async {
                    self.userStoryList = story.map { UserStory.init(storyNetworkRespond: $0)
                }
            }
        }
    }

}
