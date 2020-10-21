//
//  SplardCard.swift
//  SplardCMY
//
//  Created by Clayton Sulby on 10/21/20.
//

import SwiftUI

struct SplardCard: View {
    
    @EnvironmentObject var deck:Deck
    var splard:Splard
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(
                    AngularGradient(gradient:
                                    Gradient(colors: [.cyan, .magenta, .yellow]),
                                    center: .center,
                                    startAngle: .zero,
                                    endAngle: .degrees(360)
                    )
                    )
                .frame(width: 300, height: 500)
            VStack(alignment: .leading) {
                HStack{
                    Text(splard.name)
                        .bold()
                    Text("\(splard.cost)")
                        .background(
                            Circle()
                                .fill(splard.color)
                                .frame(width: 20, height: 20)
                        )
                }.padding(.top)
                Image(splard.image)
                    .resizable()
                    .frame(width: 250, height: 250)
                Text("\(splard.type.rawValue) - \(splard.subtype.rawValue)")
                Text(splard.description)
                    .frame(width: 250, height: 100)
                Text("\(splard.attack) / \(splard.defence)")
            }
        }.frame(width: 500, height: 500)
        .foregroundColor(.white)
    }
}

//struct SplardCard_Previews: PreviewProvider {
//    static var previews: some View {
//        SplardCard()
//    }
//}
