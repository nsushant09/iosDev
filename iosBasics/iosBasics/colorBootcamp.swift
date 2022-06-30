//
//  colorBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct colorBootcamp: View {
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    Color("lightblue")
                )
                .frame(width: 300, height: 200, alignment: .center)
                .shadow(color : Color.blue.opacity(0.2), radius: 10, x : -10, y: -10)
    
            Text("Hello World").padding(16).foregroundColor(Color.brown).font(.system(size: 24, weight: .bold, design: .monospaced))
        }
    }
}

struct colorBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        colorBootcamp()
            
    }
}
