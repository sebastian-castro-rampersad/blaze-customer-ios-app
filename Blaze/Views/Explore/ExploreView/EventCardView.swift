//
//  Canvas.swift
//  Blaze
//
//  Created by S on 19/11/23.
//

import SwiftUI
import SDWebImageSwiftUI

struct EventCardView: View {
    
    var body: some View {
        VStack {
            WebImage(url: URL(string:"https://salapelicano.com/wp-content/uploads/2023/11/BLACK-FRIDAY-2_WEB.jpg"))
                .placeholder {
                    Color(.systemGray5)
                }
                .resizable()
                .aspectRatio(contentMode: .fit)
                                    
            VStack(alignment: .leading) {
                Text("TRAPARTY")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.title)
                    .lineLimit(1)
                
                HStack {
                    Text("Pelícano")
                        .foregroundColor(.black)
                        .font(.headline)
                        
                    Spacer()
                    Text(String(format: "%.2f €", 7.0))
                        .foregroundColor(.black)
                        .font(.headline)
                }
                
                Text("A Coruña" + " - " + "July 10")
                    .foregroundColor(.gray)
                    .font(.footnote)
            }
            .padding(.top, 5)
            .padding(.bottom, 17)
            .padding(.horizontal, 22)
        }
        .background(RoundedRectangle(cornerRadius: 30).fill(Color.white))
        .cornerRadius(30)
        .shadow(radius: 6)
        .padding(.horizontal)
        .padding(.bottom, 25)
    }
}

#Preview {
    EventCardView()
}
