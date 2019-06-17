//
//  NetworkFacade.swift
//  InstaLikeApplication
//
//  Created by Vido Valianto on 6/13/19.
//  Copyright © 2019 Vido Valianto. All rights reserved.
//

import Foundation
import UIKit

class NetworkFacade {
    func fetchPost(urlstring: String, completion: @escaping ([PostNetworkRespond]) -> Void) {
        let session = URLSession.shared

        guard let url = URL(string: urlstring) else {
            print("cannot convert to url")
            return
        }

        let task = session.dataTask(with: url) { data, response, error in
            guard let responseData = data else {
                print("No data available")
                return
            }
            do {
                let decoder = JSONDecoder()
                let postNetworkRespond = try decoder.decode([PostNetworkRespond].self, from: responseData)
                completion(postNetworkRespond)
            } catch {
                print(error.localizedDescription)
            }
            print("downloading")
        }
        task.resume()
        print("running function")
    }

    func downloadImage(urlString: String, completion: @escaping (UIImage) -> Void) {
        let session = URLSession.shared

        guard let url = URL(string: urlString ) else {
            print("string not url")
            return
        }

        let task = session.dataTask(with: url) { data,response,error in
            guard let imageData = data else {
                print("No available data")
                return
            }
            guard let image = UIImage(data: imageData) else {
                print("Not an image")
                return
            }

            completion(image)
        }

        task.resume()
    }

    func fetchStories(urlString: String, completion: @escaping ([StoryNetworkRespond]) -> Void ){
        let session = URLSession.shared

        guard let url = URL(string: urlString) else {
            print("no url")
            return
        }

        let task = session.dataTask(with: url) { data, response, error in
            guard let responseData = data else {
                print("no available data")
                return
            }
            do {
                let decoder = JSONDecoder()
                let storyNetworkRespond = try decoder.decode([StoryNetworkRespond].self, from: responseData)
                completion(storyNetworkRespond)
            } catch {
                print(error.localizedDescription)
            }
        }

        task.resume()
    }
}
