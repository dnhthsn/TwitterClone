//
//  FeedView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 10/07/2023.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                LazyVStack {
                    ForEach(0..<20, id: \.self) { _ in
                        TweetRowView()
                    }
                }
            }
            
            Button(action: {
                showNewTweetView.toggle()
            }, label: {
                Image("ic_write_tweet")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
            })
            .background(Color(.systemBlue))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView, content: {
                NewTweetView()
            })
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
