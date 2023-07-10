//
//  TweetRowView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 10/07/2023.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading) {
            HStack(alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                
                VStack(alignment: .leading, spacing: 4) {
                    HStack {
                        Text("Dinh Thai Son")
                            .font(.subheadline).bold()
                        
                        Text("@hunter")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    Text("This is caption")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            
            HStack {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                })
            }
            .padding()
            .foregroundColor(.gray)
        }
        .padding()
        
        Divider()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
