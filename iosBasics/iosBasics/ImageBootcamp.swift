//
//  ImageBootcamp.swift
//  iosBasics
//
//  Created by SushantNeupane on 6/29/22.
//

import SwiftUI

struct ImageBootcamp: View {
    private let imageString : String = "https://lh3.googleusercontent.com/d-lLm1ejG4fu99bS2tHcFsiiZN1qQ7GYSJ70DM4hSzztTbnb2Dk5HhlR4WoBv-D10ZvJwinRO1eb23AK_YGqR_d_6lvFeabbWgv7FUUqjRRik1sjhUJvLhEZeqZgZLtnVi4bLgpSnH5o_Ua8idOQi_LmI_EEAennUj_7W8E0GjUofzJGP7NiOokFtWPdVL0WXPrl0TQONJyx3i4Akeal6iCmAA86qIYH99Xtir9yeTftBqnuja1HL3KWQxeFO4g9sRZFfxF5wubwsVixOb6xjPCzppMGFE1vKRoJt999qQQYOQKAbv-fgy33WMPwrtj9Y7qogsA1B9th5eHgj9QowsmY6bJsbaNLITU02yLRmMnZH5QE4-uWVxW3YIq_9eInBz8iD3VesAefw29BW6tPB_VNp41dKCzICM4nTiYHEmFv2W0_7EauzzW0mxdNPLOyU9aCrY_9kpYpUttFkYVdC2UvRvh9xjjZuFONv-VLpsBvGkoMAAZHUrokXrlJPzBwVLqCniCctvwFwla82FV9hFQWgoNnyQp0B2nSENBBgzdcSTTPaCWiMB_wS8gaWpbwiHyGncYQqzRVYEzhHHgNQzJzjRMbu1NGzw6YsIIN4H2YLIK2oM-vcbNVQ5POpoy6bR4Xxbl7ItKzGnO9S59JHEAo2MzhB4rlWHGhpM30IUH6Y41FQpmAZMk4G9SiCaCBm3omctYd19pT-3HdKUDUTWea7FDDQZYKh-QAefrpwECO5-2gRQVF=w1502-h2002-no?authuser=0"
    var body: some View {
        ScrollView{
        
            VStack{
                //for circular you can put radius half of width if the image is square
                //the better way is to use clipShape(Shape())
                Image("MyImage")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 300, height: 300, alignment: .center)
                    .overlay(
                        Text("Sushant Neupane")
                            .foregroundColor(Color.white),alignment: .bottom
                    )
                //            .clipShape(Circle())
                
                // if you uploaded an icon as an image and want to change the color / tint
                //        use renderingMode(.template)
                // and then change the color using foreground color , make sure the icon has a transparent background
                Spacer(minLength: 50)
                AsyncImage(url: URL(string : imageString)){ image in image.resizable()}placeholder: {
                    Color.red
                }.aspectRatio(contentMode: .fit)
                
            }
        }.padding(.leading,16)
            .padding(.trailing,16)
        
    }
}

struct ImageBootcamp_Previews: PreviewProvider {
    static var previews: some View {
        ImageBootcamp()
    }
}
