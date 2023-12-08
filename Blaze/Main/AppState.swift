//
//  AppState.swift
//  Blaze
//
//  Created by S on 8/12/23.
//

import Foundation

class AppState: ObservableObject {
    @Published var tabSelection: Tab = .EXPLORE
    @Published var showTabBar: Bool = false
}
