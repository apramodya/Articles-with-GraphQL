//
//  HomeViewModel.swift
//  Articles with GraphQL
//
//  Created by Pramodya Abeysinghe on 2021-05-18.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var posts = [GetPostsQuery.Data.Post.Datum]()
    
    let getPostsQuery = GetPostsQuery()
    
    func fetchPosts() {
        Network.shared.apollo.fetch(query: getPostsQuery) { result in
            switch result {
            case .success(let queryResult):
                if let data = queryResult.data?.posts?.data?.compactMap({$0}) {
                    self.posts = data
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
