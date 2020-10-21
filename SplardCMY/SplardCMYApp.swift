//
//  SplardCMYApp.swift
//  SplardCMY
//
//  Created by Clayton Sulby on 10/20/20.
//

import SwiftUI

@main
struct SplardCMYApp: App {
    
    @ObservedObject var deck = Deck()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(deck)
        }
    }
}
