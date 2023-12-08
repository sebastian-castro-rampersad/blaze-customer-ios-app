//
//  CustomViews.swift
//  Blaze
//
//  Created by S on 19/11/23.
//

import Foundation
import SwiftUI

struct CustomTextFieldView: View {
    
    var keyboardType: UIKeyboardType = .alphabet
    var prompt: String
    @Binding var input: String
    
    var body: some View {
            HStack {
                TextField("", text: self.$input, prompt: Text(prompt).foregroundColor(Color(.systemGray)))
                    .keyboardType(self.keyboardType)
                    .autocorrectionDisabled(true)
                    .tint(.theme.primary)
                    .padding(.vertical, 16)
                    .padding(.leading, 14)
                    .padding(.trailing, 45)
            }
            .background(Color(.systemGray6))
            .cornerRadius(16)
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

struct CustomTextFieldSimpleErrorView: View {
    
    var keyboardType: UIKeyboardType = .alphabet
    var prompt: String
    @Binding var input: String
    @Binding var showError: Bool
    
    var body: some View {
        ZStack {
            CustomTextFieldView(keyboardType: keyboardType, prompt: prompt, 
                            input: self.$input)
            
            HStack {
                Spacer()
                
                if self.$showError.wrappedValue {
                    Image(systemName: "exclamationmark.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(.red)
                }
            }
            .frame(height: 18)
            .padding(.trailing, 14)
        }
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

struct CustomTextFieldVerboseErrorView: View {
    
    var keyboardType: UIKeyboardType = .alphabet
    var prompt: String
    @Binding var input: String
    @Binding var textError: String
    @Binding var showError: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomTextFieldSimpleErrorView(keyboardType: keyboardType, prompt: prompt,
                                       input: self.$input, showError: self.$showError)
            
            if self.$showError.wrappedValue {
                Text(self.$textError.wrappedValue)
                    .foregroundStyle(.red)
                    .font(.caption)
                    .padding(.leading, 7.5)
            }
        }
    }
}

// - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -

struct CustomDescriptiveTextFieldVerboseErrorView: View {
    
    var keyboardType: UIKeyboardType = .alphabet
    var prompt: String
    var description: String
    @Binding var input: String
    @Binding var textError: String
    @Binding var showError: Bool
    
    var body: some View {
        VStack(alignment: .leading) {
            CustomTextFieldSimpleErrorView(keyboardType: keyboardType, prompt: prompt,
                                       input: self.$input, showError: self.$showError)
            
            if self.$showError.wrappedValue {
                Text(self.$textError.wrappedValue)
                    .foregroundStyle(.red)
                    .font(.caption)
                    .padding(.leading, 7.5)
            }
            else {
                Text(self.description)
                    .foregroundStyle(.gray)
                    .font(.caption)
                    .padding(.leading, 7.5)
            }
        }
    }
}

