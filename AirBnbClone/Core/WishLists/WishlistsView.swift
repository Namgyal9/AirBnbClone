//
//  WishlistsView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/10/25.
//

import SwiftUI

struct WishlistsView: View {
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 32){
                VStack(alignment:.leading, spacing: 4){
                    Text("Log in to view your wishlists")
                        .font(.headline)
                    Text("you can create, view, or edit wishlists once you've logged in")
                }
                Button(){
                    
                }
                label:{
                    Text("Log in")
                        .font(.subheadline)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                        .frame(maxWidth:.infinity, minHeight: 48)
                        .background(.pink)
                        .clipShape(RoundedRectangle(cornerRadius: 8))
                        
                }
                Spacer()
                
                
            }
            .padding()
            .navigationTitle("Wishlists")
            
        }
       
    }
}

#Preview {
    WishlistsView()
}
