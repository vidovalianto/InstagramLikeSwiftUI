//
//  SwiftUIView.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import SwiftUI

struct RowPhotoView : View {
    @ObjectBinding var postUser = PostUserListViewModel()

    var body: some View {
        List { ForEach(postUser.postUserList) { user in
                VStack(alignment: .leading) {
                    ProfileUserNameRowView(author: user.author,profileImg:user.image).padding().padding(.bottom,-10)
                    HStack {
                        Spacer()
                        RoundedImageView(image: user.image,size: 300,imageCornerRadius: 10).padding()
                        Spacer()
                    }
                }
            }
        }
    }
}
