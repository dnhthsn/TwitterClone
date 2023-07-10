//
//  ExploreView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 10/07/2023.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0..<20, id: \.self) { _ in
                            NavigationLink(destination: {
                                ProfileView()
                            }, label: {
                                UserRowView()
                            })
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
