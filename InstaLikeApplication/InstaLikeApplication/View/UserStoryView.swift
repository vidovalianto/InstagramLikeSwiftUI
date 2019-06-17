//
//  UserStory.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/16/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import SwiftUI

struct UserStoryView : View {
    @ObjectBinding var userStory = UserStoryViewModel()

    var body: some View {
        VStack(alignment: .leading) {
            ScrollView {
                HStack { ForEach(userStory.userStoryList) { story in
                    RoundedImageView(image: story.image, size: 30, imageCornerRadius: 30).padding()
                    }
                }
            }.frame(height: 50)
        }
    }
}
