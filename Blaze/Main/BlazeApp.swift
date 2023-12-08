//
//  BlazeApp.swift
//  Blaze
//
//  Created by S on 18/11/23.
//

import SwiftUI

@main
struct BlazeApp: App {
    
    @StateObject var appState = AppState()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(appState)
        }
    }
}
