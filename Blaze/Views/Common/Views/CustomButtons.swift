//
//  CustomButtons.swift
//  Blaze
//
//  Created by S on 19/11/23.
//

import Foundation
import SwiftUI

struct CustomBigPurpleButtonView: View {
    
    var text: String
    @Binding var disable: Bool
    
    var body: some View {
        Text(text)
            .padding(.vertical, 16)
            .frame(maxWidth: .infinity)
            .background(self.$disable.wrappedValue ? Color(.systemGray5) : .theme.primary)
            .cornerRadius(18)
            .foregroundColor(self.$disable.wrappedValue ? Color(.systemGray2) : .white)
            .bold()
    }
}

struct CustomBigPurpleActionableButtonView: View {
    
    var text: String
    @Binding var disable: Bool
    var action: () -> ()
    
    var body: some View {
        Button() {
            self.action()
        } label: {
            CustomBigPurpleButtonView(text: self.text, disable: self.$disable)
        }
        .disabled(self.$disable.wrappedValue)
    }
}

