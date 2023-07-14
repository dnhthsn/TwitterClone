//
//  NewTweetView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 12/07/2023.
//

import SwiftUI

struct NewTweetView: View {
    @Environment(\.presentationMode) var mode
    @State private var caption = ""
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    mode.wrappedValue.dismiss()
                }, label: {
                    Text("Cancel")
                        .foregroundColor(Color(.systemBlue))
                })
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Text("Tweet")
                        .bold()
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                })
                
            }
            .padding()
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                
                TextEditor(text: $caption)
                    .scrollContentBackground(.hidden)
                    .placeholder(when: caption.isEmpty) {
                        Text("What's happening?")
                            .foregroundColor(Color(red: 158/255, green: 158/255, blue: 158/255))
                            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                            .padding(8)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    
            }
            .padding()
            
            Spacer()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
