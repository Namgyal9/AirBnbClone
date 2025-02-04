//
//  ListingImageCarouselView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/3/25.
//

import SwiftUI

struct ListingImageCarouselView: View {
    var images: Array<String> = ["image1", "image2", "image3"]
    var body: some View {
        TabView{
            ForEach(images, id: \.self){image in
                Image(image)
                    .resizable()
                    .scaledToFill()
            }
            
        }
        .tabViewStyle(.page)
    }
}
               
#Preview {
    ListingImageCarouselView()
}

// this reusable component doesn't have the .frame and .clipshape modifier because althought the essence of this component is same, the size parameters are different in the different pages it is used. The specification is defined in the other files that uses this component. Good tip to know. 
