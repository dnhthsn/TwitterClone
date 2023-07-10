//
//  UserRowView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 10/07/2023.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack(spacing: 12) {
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("hunter")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                
                Text("Dinh Thai Son")
                    .font(.subheadline)
                    .foregroundColor(Color.gray)
            }
            
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 4)
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
