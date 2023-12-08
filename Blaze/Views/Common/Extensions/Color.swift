//
//  Color.swift
//  Blaze
//
//  Created by S on 25/11/23.
//

import Foundation
import SwiftUI

struct ColorTheme {
    let primary = Color("primary")
    let secondary = Color("secondary")
    let tertiary = Color("tertiary")
}

extension Color {
    static let theme = ColorTheme()
}

