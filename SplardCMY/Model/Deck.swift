//
//  Deck.swift
//  SplardCMY
//
//  Created by Clayton Sulby on 10/21/20.
//

import Foundation
import SwiftUI

typealias Splards = [Splard]

class Deck : ObservableObject {
    
    @Published var splards:Splards
    
    init() {
        splards = [
            Splard(name: "Dumpy", image: "frog", cost: 1, color: Color.cyan, description: "This frog is EXTREMELY dumpy, but in a good way!", type: .creature, subtype: .frog, attack: 1, defence: 3),
            Splard(name: "Simi", image: "axolotl", cost: 2, color: Color.cyan, description: "It's mini smile will brighten your day in the best way", type: .creature, subtype: .axolotl, attack: 2, defence: 2),
            Splard(name: "Pidg", image: "pigeon", cost: 1, color: Color.yellow, description: "Pidgeons are actually called Rock Doves!", type: .creature, subtype: .pigeon, attack: 2, defence: 1),
            Splard(name: "Pooty", image: "potoo", cost: 2, color: Color.yellow, description: "This bird looks like a stump! But it sounds like a burp...", type: .creature, subtype: .potoo, attack: 3, defence: 1),
            Splard(name: "Hambone", image: "hamster", cost: 1, color: Color.magenta, description: "Ham-P-sters... don't forget the 'P' !!", type: .creature, subtype: .hamster, attack: 2, defence: 2),
            Splard(name: "Gingy", image: "guineapig", cost: 2, color: Color.magenta, description: "Guinea Pigs are native to Guinea!", type: .creature, subtype: .hamster, attack: 2, defence: 2)
        ]
    }
    
    func collect(name: String, image: String, cost: Int, color:Color, description: String, type:Type, subtype:Subtype, attack: Int, defence: Int) {
        splards.append(Splard(name: name, image: image, cost: cost, color: color, description: description, type: type, subtype: subtype, attack: attack, defence: defence))
    }
}
