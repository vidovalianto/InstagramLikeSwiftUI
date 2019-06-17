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

class PostImageViewModel: BindableObject {
    var imagePost = UIImage(color: .lightGray) {
        didSet {
            didChange.send(self)
        }
    }

    init(imageUrl: String) {
        print(imageUrl)
        guard let url = URL(string: imageUrl) else {
            print("no url")
            return
        }
        let data = try! Data(contentsOf: url)
        self.imagePost = UIImage(data: data)
//        NetworkFacade().downloadImage(urlString: imageUrl) { self.imagePost = $0 }
    }

    let didChange = PassthroughSubject<PostImageViewModel,Never>()
}
