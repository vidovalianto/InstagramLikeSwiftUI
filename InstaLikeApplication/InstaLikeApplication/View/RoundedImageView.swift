//
//  RoundedImageView.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import SwiftUI

struct RoundedImageView : View {
//    var imageUrl: String
    var image: UIImage
    var size: Int
    var imageCornerRadius: Int

    var body: some View {
            Image(uiImage: image)
                .resizable()
                .frame(width: CGFloat(size), height: CGFloat(size), alignment: .center)
                .clipShape(RoundedRectangle(cornerRadius: CGFloat(imageCornerRadius)))
    }
}
