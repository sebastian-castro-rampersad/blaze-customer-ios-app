//
//  Styles.swift
//  Blaze
//
//  Created by S on 26/11/23.
//

import Foundation
import SwiftUI

struct RemoveHighlightStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
    }
}
