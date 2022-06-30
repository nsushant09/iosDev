//
//  GradiantBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct GradiantBootcamp: View {
    private var listOfPerson = [
        Person(name : "Sushant"),
        Person(name : "Yogesh"),
        Person(name : "Utsab"),
        Person(name : "Pratyush")
    ]
    
    private var list = ["sushant", "neupane", "is", "my", "name"]
    var body: some View {
        
        VStack{
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        colors: [Color.black, Color.red, Color.blue, Color.green, Color.orange, Color.white, Color.purple],
                        startPoint: .leading,
                        endPoint: .trailing)
                )
                .frame(width: 300, height: 200, alignment: .center)
            
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    //put end radius equal to height or less than height for center
                    // width radius for leading or trailing
                    RadialGradient(
                        gradient: Gradient(colors : [Color.blue, Color.red, Color.orange, Color.white, Color.black]),
                        center: .topLeading,
                        startRadius: 30,
                        endRadius: 300)
                )
                .frame(width: 300, height: 200, alignment: .center)
            
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient:Gradient(colors: [Color.black, Color.red, Color.blue, Color.green, Color.orange, Color.white, Color.purple]),
                        center: .center,
                        angle: .degrees(45.0)
                    )
                )
                .frame(width: 300, height: 200, alignment: .center)
            
            List(listOfPerson){
                Text($0.name)
            }
        }
    }
}

struct GradiantBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        GradiantBootcamp()
    }
}

class Person : Identifiable{
    var name : String
    init(name : String){
        self.name = name
    }
}
