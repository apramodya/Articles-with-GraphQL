//
//  ContentView.swift
//  Articles with GraphQL
//
//  Created by Pramodya Abeysinghe on 2021-05-18.
//

import SwiftUI
import Apollo

extension GetPostsQuery.Data.Post.Datum: Identifiable {}

struct HomeView: View {
    @ObservedObject var vm = HomeViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(vm.posts) { post in
                    NavigationLink(destination: DetailsView(vm: DetailsViewModel(post: post))) {
                        Button {
                        } label: {
                            HStack(alignment: .top) {
                                Text("\(post.id ?? ""). ")
                                Text(post.title ?? "")
                                Spacer()
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.3))
                            .cornerRadius(8)
                        }
                    }
                }
            }
            .navigationBarHidden(true)
            .onAppear(perform: {
                vm.fetchPosts()
            })
            .padding()
        }
    }
}
