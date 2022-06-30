//
//  textBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct textBootcamp: View {
    var body: some View {
        
        Text("Hello World! ")
            .baselineOffset(4)
            .kerning(1)
            .foregroundColor(Color.brown)
            .font(.system(size : 24, weight : .semibold, design : .monospaced))
            .padding(16)
            .frame(alignment : .leading)
    
        //                .font(.title)
        //                .fontWeight(.medium)
        //                .bold()
        //                .underline(true, color : Color.red)`
    }
    
}



struct textBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        textBootcamp()
    }
}
