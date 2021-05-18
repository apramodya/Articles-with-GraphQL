//
//  DetailsViewModel.swift
//  Articles with GraphQL
//
//  Created by Pramodya Abeysinghe on 2021-05-18.
//

import Foundation

class DetailsViewModel: ObservableObject {
    var id: String?
    @Published var post: GetPostQuery.Data.Post?
    
    init(post: GetPostsQuery.Data.Post.Datum) {
        self.id = post.id
    }
    
    func fetchPost() {
        guard let id = id else { return }
        
        Network.shared.apollo.fetch(query: GetPostQuery(id: id)) { result in
            switch result {
            case .success(let graphQLResult):
                if let data = graphQLResult.data?.post {
                    self.post = data
                }
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
}
