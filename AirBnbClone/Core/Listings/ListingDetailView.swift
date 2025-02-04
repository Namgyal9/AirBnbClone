//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/3/25.
//

import SwiftUI

struct ListingDetailView: View {
    var body: some View {
        ScrollView{
            ListingImageCarouselView()
                .frame(height: 320)
        
            // using tabstyle with .page automatically adds a padding. hence why the v stack is slightly below the carousel view. One way to tackle that is to apply .padding(.bottom, -10) to the carousel view.
                
            
            // housing info
            VStack(alignment: .leading, spacing: 8){
                Text("Miami Villa")
                    .font(.title)
                    .fontWeight(.semibold)
                VStack(alignment:.leading){
                    HStack(spacing: 2){
                        Image(systemName: "star.fill")
                        Text("4.86")
                        Text(" - ")
                        Text("28 Reviews")
                            .underline()
                    }
                    .foregroundStyle(.black)
                    Text("Miami, Florida")
                }
                .font(.caption)
                
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment:.leading)
            
            Divider()
            //host info view
            HStack{
                VStack(alignment: .leading, spacing: 4){
                    Text("Entire Villa Hosted by Ella Smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                        // the reason the frame is placed is so that text doesn't bleed over
                    // to the profile picture
                    
                    HStack(spacing: 4){
                        Text("4 Guests -")
                        Text("4 bedrooms -")
                        Text("4 beds -")
                        Text("3 baths")
                    }
                    .font(.caption)
                }
                .frame(width: 300, alignment: .leading)
                
                Spacer()
                
                Image("profilePic")
                    .resizable()
                    .scaledToFill()
                // this modifier unlike scaledtofill results in image
                 //  going out of bound, so we have to clip it using .clipped()
                // to clip it and get a shape do, .clipShape()
                    .frame(width: 64, height: 64)
                    .clipShape(Circle())
                
            }
            .padding()
            
            Divider()
            
            // listing Features
            
            // i was initially using .frame , maxwidth and alignment to align the parent Vstack , but looks like using spacer does the job too and it is much easier method. need to keep this in my tip box. 
            
            VStack( alignment: .leading, spacing: 16){
                HStack(spacing: 12){
                    Image(systemName:"star.fill")
                    VStack(alignment:.leading){
                        Text("Self check-in")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Check yourself in with the keypad")
                            .font(.caption)
                            .foregroundStyle(.gray)
                        
                    }
                    Spacer()
                    
                    
                }
                HStack(spacing: 10){
                    Image(systemName:"medal")
                    VStack(alignment:.leading){
                        Text("SuperHost")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("SuperHosts are experienced, highly rated hosts who are committed to providing great travel experiences.")
                            .font(.caption)
                            .foregroundStyle(.gray)
                    }
                    Spacer()
                    
                    
                }
            }
            .padding()
            
            
            
            
                        
            
            
            
            
            
            
            
        }
        
    }
}

#Preview {
    ListingDetailView()
}
