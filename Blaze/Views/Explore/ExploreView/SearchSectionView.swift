//
//  Canvas2.swift
//  Blaze
//
//  Created by S on 28/11/23.
//

import SwiftUI

struct SearchSectionView: View {
    
    @State private var isEditing = false
    @Binding var searchTnput: String
    @Binding var scrollProgress: CGFloat
    
    var body: some View {
        Rectangle()
            .foregroundStyle(.white)
            .frame(height: 160)
            .shadow(radius: 3)
            .scaleEffect(y: 0.5 + (1 - self.scrollProgress) * 0.5, anchor: .top)
        
        VStack {
            HStack {
                TextField("", text: self.$searchTnput, prompt:
                            Text("Search")
                                .foregroundStyle(Color(.systemGray2))
                                .fontWeight(.medium))
                    .autocorrectionDisabled(true)
                    .tint(.theme.primary)
                    .padding(.vertical, 16)
                    .padding(.horizontal, 42)
            }
            .background(Color(.systemGray6))
            .cornerRadius(16)
            .shadow(radius: 3)
            .overlay(
                    HStack {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.theme.primary)
                            .bold()
                        Spacer()
                        
                        Button {
                            self.searchTnput = ""
                        } label: {
                            Image(systemName: "x.circle.fill")
                                .foregroundColor(Color(.systemGray2))
                                .bold()
                        }
                        .opacity(self.searchTnput.isEmpty ? 0.0 : 1.0)
                    }
                    .padding(.horizontal, 15)
                    
            )
            .opacity(2.0 - self.scrollProgress * 2.5)
            .scaleEffect(y: 0.2 + (1 - self.scrollProgress) * 0.8, anchor: .top)
            .padding(.horizontal)

            Button {
                print("hola")
            } label: {
                ZStack {
                    Capsule()
                        .fill(Color.white)
                        .frame(height: 35)
                        .shadow(radius: 3)
                    
                    Text("Pelícano - 19/08 to 04/09")
                        .foregroundStyle(Color(Color.theme.primary))
                        .font(.subheadline)
                        .fontWeight(.semibold)
                }
            }
            .padding(.top, 12)
            .padding(.horizontal, 20)
            .offset(y: -1.0 * self.scrollProgress * 77)
            .buttonStyle(RemoveHighlightStyle())
        }
    }
}
