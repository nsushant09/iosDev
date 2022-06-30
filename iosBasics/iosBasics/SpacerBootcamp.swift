//
//  SpacerBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
        HStack{
            
            Image(systemName: "xmark")
                .font(.title)
            
            Spacer()
            
            Image(systemName: "gear")
                .font(.title)
            
        }
        .padding(16)
        .font(.title)
    }
}

struct SpacerBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SpacerBootcamp()
    }
}
