//
//  Extensions.swift
//  TwitterClone
//
//  Created by Đinh Thái Sơn on 12/07/2023.
//

import Foundation
import Combine
import UIKit
import SwiftUI

extension View {
    func placeholder<Content: View>(
        when shouldShow: Bool,
        alignment: Alignment = .leading,
        @ViewBuilder placeholder: () -> Content) -> some View {

        ZStack(alignment: alignment) {
            placeholder().opacity(shouldShow ? 1 : 0)
            self
        }
    }
}
