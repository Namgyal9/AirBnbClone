//
//  ExploreView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/3/25.
//

import SwiftUI

struct ExploreView: View {
    @State private var showDestinationSearchView = false
    var body: some View {
        NavigationStack{
            if showDestinationSearchView{
                
                DestinationSearchView(show: $showDestinationSearchView)         
                
            }
            else{
                
                ScrollView{
                    SearchAndFilterBar()
                        .onTapGesture{
                            withAnimation(.snappy){
                                showDestinationSearchView.toggle()
                            }
                        }
                    LazyVStack(spacing: 32){
                        ForEach(0..<10, id: \.self){ listing in
                            NavigationLink(value: listing){
                                ListingItemView()
                                    .frame(height: 400)
                                    .clipShape(RoundedRectangle(cornerRadius: 10))
                                    
                                    
                                    
                            }
                        }
                    }
                    
                    
                }
                .navigationDestination(for: Int.self){listing in
                    ListingDetailView()
                        .navigationBarBackButtonHidden()
                        .toolbar(.hidden, for: .navigationBar)

                    
                    
                        
                        
                        
                }
                
            }
            
        }
    }
}
#Preview {
    ExploreView()
}





/*
 
 first come up with the skeleton; then you can repopulate it with features
 coming up with skeleton means doing the basic layout and if needed use false
 static data or mock data to showcase it.
 
 use comments to pinpoint and separate sections of code.
 
 it is not necessary to use the appropriate components right from the start.
 for example i could put a temporary component first then later replace it.
 For example in this project i needed a tabview, but before i used the tabview i use a rectangle view to see
 the layout then once i was satisifed, replaced that line of code with tabview
 
 
 
 */
