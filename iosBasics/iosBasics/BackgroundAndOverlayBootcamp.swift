//
//  BackgroundAndOverlayBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .foregroundColor(Color.white)
//            .frame(width: 200, height: 200, alignment: .center)
//            .background(
////                LinearGradient(colors: <#T##[Color]#>, startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>)
//                Circle()
//            )
//            .font(.system(size: 24, weight: .bold, design: .monospaced))
//            .padding(16)
    
        VStack{
            
            
            Circle()
                .fill(
                    LinearGradient(colors: [Color.pink, Color.red], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: 100, height: 100, alignment: .center)
                .overlay(
                    Image(systemName: "heart.fill")
                        .resizable()
                        .scaledToFit()
                        .padding(30)
                        .foregroundColor(Color.white)
                )
                .overlay(
                    Circle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 35, alignment: .center)
                        .overlay(
                            Text("5")
                                .font(.caption)
                        )
                        
                    ,
                    alignment: .bottomTrailing
                )
            
        }
    
    }
    
    func circleShape() -> some View{
        Circle()
            .fill(Color.pink)
            .frame(width: 100, height: 100, alignment: .center)
            .overlay(
                Text("1").font(.largeTitle).foregroundColor(Color.white).padding(16) , alignment: .bottom
            )
    }
}

struct BackgroundAndOverlayBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundAndOverlayBootcamp()
    }
}
