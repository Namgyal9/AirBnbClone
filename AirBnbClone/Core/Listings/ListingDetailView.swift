//
//  ListingDetailView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/3/25.
//

import SwiftUI
import MapKit

struct ListingDetailView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ScrollView{
            ZStack(alignment: .topLeading) {
                ListingImageCarouselView()
                    .frame(height: 320)
                
                //back button
                
                Button(){
                    dismiss()
                }
                label:{
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                        .background{
                            Circle()
                                .fill(.white)
                                .frame(width: 32, height: 32)
                        }
                        .padding(32)
                        
                        
                    
                }
                
            }
        
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
            
            Divider()
            
            // bedrooms view
            VStack(alignment:.leading, spacing: 16){
                Text("Where you'll sleep")
                    .font(.headline)
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(spacing: 16){
                        ForEach(1..<5, id: \.self){ number in
                            VStack(alignment: .leading, spacing: 12){
                                Image(systemName: "bed.double")
                                Text("Bedroom \(number)")
                                    .font(.footnote)
                            }
                            .padding(.leading)
                            .frame(width: 132, height: 100, alignment: .leading)
                            .overlay{
                                RoundedRectangle(cornerRadius: 12)
                                    .stroke(lineWidth: 1)
                                    .foregroundStyle(Color(.systemGray4))
                                    .shadow(color: .black.opacity(0.2), radius: 2)
                                    
                            }
                        }
                    }
                    
                }
                
            }
            .padding()
            
            Divider()
            
            // listing amenities
            VStack(alignment: .leading, spacing: 16){
                Text("What this place offers")
                    .font(.headline)
                ForEach(0..<5, id: \.self){ feature in
                    HStack{
                        Image(systemName: "wifi")
                            .frame(width: 32)
                        Text("Wifi")
                            .font(.footnote)
                        Spacer()
                    }
                }
            }
            .padding()
            
            Divider()
            
            // Map View
            
            VStack(alignment:.leading, spacing: 16){
                
                Text("Where you'll be")
                    .font(.headline)
                
                Map()
                    .frame(height: 200)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                
            }
            .padding()

        }
        .ignoresSafeArea()
        .padding(.bottom, 72)
        .overlay(alignment:.bottom){
            VStack{
                Divider()
                    .padding(.bottom)
                HStack{
                    VStack(alignment: .leading){
                        Text("$500")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                        Text("Total before taxes")
                            .font(.footnote)
                        Text("Oct 15 - 20")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .underline()
                        
                        
                    }
                    Spacer()
                    
                    Button(){
                        //MARK: TODO
                    }
                    label:{
                        Text("Reserve")
                            .foregroundStyle(.white)
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 140, height: 40)
                            .background(.pink)
                            .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                    }
                }
                .padding(.horizontal, 28)
                
                
            }
            .background(.white)
        }
    }
}

#Preview {
    ListingDetailView()
}



// keep a consistent padding and alignment throughout the app or a screen
// learn all the differnt text fonts and fontweights and how they look and etc...
//have the modifier memorized that seem to do particular things. for exmaple the hiddesn label, ignoressafearea and .navigatoinbutton hidden
