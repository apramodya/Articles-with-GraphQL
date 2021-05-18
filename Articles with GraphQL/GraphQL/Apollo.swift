//
//  Apolle.swift
//  Articles with GraphQL
//
//  Created by Pramodya Abeysinghe on 2021-05-18.
//

import Foundation
import Apollo

class Network {
    static let shared = Network()
    
    lazy var apollo = ApolloClient(url: URL(string: "https://graphqlzero.almansi.me/api")!)
}
