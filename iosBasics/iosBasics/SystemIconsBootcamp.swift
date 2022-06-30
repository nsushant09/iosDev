//
//  SystemIconsBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct SystemIconsBootcamp: View {
    var body: some View {

        Image(systemName: "gamecontroller.fill")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .font(.system(size: 200))
            .foregroundColor(Color.green)
            .padding(16)
//            .scaledToFill()
            .frame(width: 300, height: 300, alignment: .center)
//            .clipped()
        
        //there are multicolors icons as well
        
    }
}

struct SystemIconsBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        SystemIconsBootcamp()
    }
}
