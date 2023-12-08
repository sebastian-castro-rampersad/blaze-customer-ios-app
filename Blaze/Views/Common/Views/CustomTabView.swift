//
//  CustomTabView.swift
//  Blaze
//
//  Created by S on 21/11/23.
//

import SwiftUI

struct CustomTabView: View {
    
    @Binding var selection: Tab
    
    let destinations: [(tab: Tab, name: String, image: String)] = [
        (.EXPLORE, "Explore", "magnifyingglass"),
        (.MY_TICKTES, "My tickets", "qrcode"),
        (.ACCOUNT, "Account", "person.crop.circle")
    ]
    
    var body: some View {
        VStack {
            Spacer()
            ZStack {
                Capsule()
                    .foregroundColor(.white)
                    .frame(height: 70)
                    .shadow(radius: 3)
                
                HStack {
                    ForEach(destinations, id:\.self.tab) { destination in
                        VStack {
                            Button {
                                self.selection = destination.tab
                            } label: {
                                VStack {
                                    Image(systemName: destination.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(height: 22)
                                        .bold()
                                    
                                    Text(destination.name)
                                        .font(.caption)
                                        .bold()
                                }
                                .padding(.horizontal, 27)
                                .foregroundColor(selection == destination.tab ? .theme.primary : Color(.systemGray2))
                            }
                            .buttonStyle(RemoveHighlightStyle())
                        }
                    }
                }
            }
            .padding(.horizontal)
        } // This way the keyboard doesn't push the TabBar
        .ignoresSafeArea(.keyboard)
    }
}
