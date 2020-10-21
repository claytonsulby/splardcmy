//
//  ContentView.swift
//  SplardCMY
//
//  Created by Clayton Sulby on 10/20/20.
//

import SwiftUI

struct ContentView: View {
    
    @EnvironmentObject var deck:Deck
    
    var body: some View {
        NavigationView{
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(deck.splards, id:\.self) { splard in
                        SplardCard(splard: splard)
                    }
                }
            }.navigationBarTitle("Splards")
            .navigationBarHidden(false)
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
