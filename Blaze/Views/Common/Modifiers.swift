//
//  CustomModifiers.swift
//  Blaze
//
//  Created by S on 19/11/23.
//

import Foundation
import SwiftUI

struct CenterContent: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

struct BottomPaddingTextField: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(.bottom, 10)
    }
}
