//
//  Splard.swift
//  SplardCMY
//
//  Created by Clayton Sulby on 10/20/20.
//

import Foundation
import SwiftUI

struct Splard : Hashable {
    var name:String
    var image:String
    var cost:Int
    var color:Color // cyan, magenta, or yellow
    var description:String
    var type:Type //like creature, enchantment, etc...
    var subtype:Subtype
    var attack:Int
    var defence:Int
}
