//
//  GSDApp.swift
//  GSD
//
//  Created by Jamar Gibbs on 11/26/22.
//

import SwiftUI

@main
struct GSDApp: App {
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onChange(of: scenePhase) { phase in
                                if phase == .inactive {
                                 
                                } else if phase == .active {
                    
                                } else if phase == .background {

                                }
                }
        }
    }
}
