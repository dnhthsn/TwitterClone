//
//  SideMenuView.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 10/07/2023.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 32) {
            VStack(alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("Dinh Thai Son")
                        .font(.headline)
                    
                    Text("@hunter")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                if option == .profile {
                    NavigationLink(destination: {
                        ProfileView()
                    }, label: {
                        SideMenuOptionRowView(viewModel: option)
                    })
                } else if option == .logout {
                    Button(action: {
                        print("Loggout....")
                    }, label: {
                        SideMenuOptionRowView(viewModel: option)
                    })
                } else {
                    SideMenuOptionRowView(viewModel: option)
                }
                
                
            }
            .padding(.vertical, 4)
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
