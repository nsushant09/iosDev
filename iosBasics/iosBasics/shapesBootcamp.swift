//
//  shapesBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct shapesBootcamp: View {
    @State private var circleFrom : Double = 0.0
    @State private var  circleTo : Double = 1.0
    var body: some View {
        
        
        
        VStack{
            Circle()
                .trim(from: circleFrom, to: circleTo)
                .stroke(Color.blue, style : StrokeStyle(lineWidth: 20, lineCap: .butt, dash: [10]))
            
            
            ZStack{
                Ellipse().frame(width: 100, height: 100, alignment: .center)
                Text("Hello World").foregroundColor(Color.white)
            }
            
            Button(action: {
                circleFrom += 0.1
                circleTo -= 0.1
                
                if(circleFrom >= 0.5 || circleTo <= 0.5){
                    circleFrom = 0.0
                    circleTo = 1.0
                }
            }, label: {
                Text("Click to change size").padding(16).foregroundColor(Color.white).background(Color.black).cornerRadius(16)
            })
        
        }
            
    }
}

struct shapesBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        shapesBootcamp()
    }
}
