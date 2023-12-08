//
//  MainView.swift
//  Blaze
//
//  Created by S on 21/11/23.
//

import SwiftUI


struct MainView: View {
    
    @EnvironmentObject var appState: AppState
    
    var body: some View {
        if (appState.tabSelection == .EXPLORE) {
            BaseTabView {
                ExploreView()
             }
        }
        else if (appState.tabSelection == .MY_TICKTES) {
            BaseTabView {
                Text("BBB")
            }
            
        }
        else if (appState.tabSelection == .ACCOUNT) {
            BaseTabView {
                Text("CCC")
            }
        }
    }
}

