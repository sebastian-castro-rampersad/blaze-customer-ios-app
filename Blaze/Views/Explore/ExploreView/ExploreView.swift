//
//  ExploreView.swift
//  Blaze
//
//  Created by S on 2/12/23.
//

import SwiftUI
import ScalingHeaderScrollView

struct ExploreView: View {
    
    @State var input = ""
    @State var progress: CGFloat = 0
    
    var body: some View {
        ZStack {
            ScalingHeaderScrollView {
                SearchSectionView(searchTnput: self.$input, scrollProgress: self.$progress)
             } content: {
                 Spacer()
                 Spacer()
                 
                 NavigationLink(destination: ContentView().navigationBarBackButtonHidden(true)) {
                     EventCardView()
                 }
                 .buttonStyle(RemoveHighlightStyle())
             }
             .height(min: 150, max: 160)
             .collapseProgress($progress)
             .hideScrollIndicators()
            
            VStack {
                Rectangle()
                    .foregroundStyle(.white)
                    .frame(height: 50)
                    .ignoresSafeArea()
                
                Spacer()
            }
        }
    }
}

#Preview {
    ExploreView()
}
