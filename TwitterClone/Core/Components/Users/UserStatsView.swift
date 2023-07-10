//
//  UserStatsView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 10/07/2023.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24) {
            HStack(spacing: 4) {
                Text("999")
                    .font(.subheadline)
                    .bold()
                
                Text("Following")
                    .font(.caption)
            }
            
            HStack(spacing: 4) {
                Text("1.2M")
                    .font(.subheadline)
                    .bold()
                
                Text("Followers")
                    .font(.caption)
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
