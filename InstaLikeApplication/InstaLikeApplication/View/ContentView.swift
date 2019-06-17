//
//  ContentView.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            Text("").navigationBarTitle(Text("InstagramLike")
                .font(.largeTitle))
            UserStoryView()
            RowPhotoView()
        }
    }
}
