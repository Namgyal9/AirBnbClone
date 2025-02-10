//
//  ProfileView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/5/25.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack{
            Spacer()
            VStack(alignment: .leading, spacing: 32){
                
                VStack(alignment: .leading, spacing: 8){
                    Text("Profile")
                        .font(.largeTitle)
                        .fontWeight(.semibold)
                    Text("Log in to start planning your next trip")
                }
                
                
                //login button
                
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
                
                
                
                HStack{
                    Text("Don't have an account?")
                    Text("Sign up")
                        .underline()
                        .fontWeight(.semibold)
                    
                }
                .font(.caption)
                
                
                
            }
            VStack(alignment: .leading, spacing: 24){
                FaqView(icon:"gear", name: "settings")
                FaqView(icon:"gear", name: "Accessibility")
                FaqView(icon:"questionmark.circle", name: "Visit the Help Center")
            }
            .padding(.vertical)
            Spacer()
            
        }
        .padding()
        
        
    }
}

struct FaqView : View {
    let icon: String
    let name: String
    var body: some View {
        HStack{
            Image(systemName:icon)
            Text(name)
            Spacer()
            Image(systemName: "arrow.right")
        }
        Divider()
        
    }
   
    
}

#Preview {
    ProfileView()
}
