//
//  ListingItemView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/3/25.
//

import SwiftUI

struct ListingItemView: View {
    var images: Array<String> = ["image1", "image2", "image3"]
    
    
    var body: some View {
        VStack{
            // images
            
            ListingImageCarouselView()
                .frame(height: 320)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            
            // listing details
            
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Miami, Florida")
                        .fontWeight(.semibold)
                        .foregroundStyle(.black)
                    Text("12 mi away")
                        .foregroundStyle(.gray)
                    Text("Nov 3 - 10")
                        .foregroundStyle(.gray)
                    HStack(spacing: 2){
                        Text("$567")
                            .fontWeight(.semibold)
                        Text("/night")
                            
                        
                    }
                    .foregroundStyle(.black)
                }
                
                //ratings
                Spacer()
                HStack(spacing: 2){
                    Image(systemName: "star.fill")
                    Text("4.86")
                }
                .foregroundStyle(.black)
            }
            .font(.footnote)
            
            
            
        }
        .padding()
    }
}

#Preview {
    ListingItemView()
}
