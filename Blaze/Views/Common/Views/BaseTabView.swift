//
//  BaseTabView.swift
//  Blaze
//
//  Created by S on 25/11/23.
//

import SwiftUI
import NavigationTransitions

struct BaseTabView<Content: View>: View {
    
    @EnvironmentObject var appState: AppState
    @ViewBuilder let content: () -> Content
    
    var body: some View {
        NavigationStack {
            ZStack {
                self.content()
                    .onAppear {
                        // To prevent weird animation behaviour
                        DispatchQueue.main.async {
                            withAnimation {
                                self.appState.showTabBar = true
                            }
                        }
                    }
                // A TabView inside each main view to prevent that the TabView
                // shows in deeper views
                if (self.appState.showTabBar) {
                    VStack {
                        Spacer()
                        CustomTabView(selection: self.$appState.tabSelection)
                            .padding(.bottom, -10)
                    }
                    .transition(.move(edge: .bottom))
                }
            }
        }
        .navigationTransition(.slide, interactivity: .pan)
    }
}
