//
//  ProfileUserNameRowView.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import SwiftUI

struct ProfileUserNameRowView : View {
    var author: String
    var profileImg: UIImage

    var body: some View {
        HStack {
            RoundedImageView(image: profileImg, size: 30, imageCornerRadius: 30)
            Text(author)
        }
    }
}
