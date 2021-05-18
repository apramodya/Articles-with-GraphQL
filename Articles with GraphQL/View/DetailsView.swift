//
//  DetailsView.swift
//  Articles with GraphQL
//
//  Created by Pramodya Abeysinghe on 2021-05-18.
//

import SwiftUI

struct DetailsView: View {
    @ObservedObject var vm: DetailsViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(vm.post?.title ?? "N/A")
                .bold()
                .font(.headline)
            
            Text(vm.post?.body ?? "N/A")
                .font(.body)
            
            Spacer()
        }
        .padding(.horizontal)
        .onAppear {
            vm.fetchPost()
        }
    }
}
