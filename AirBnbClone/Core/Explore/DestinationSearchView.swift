//
//  DestinationSearchView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/4/25.
//

import SwiftUI
enum DestinationSearchOptions{
    case location, dates, guests
}

struct DestinationSearchView: View {
    @Binding var show: Bool
    @State private var destination = ""
    @State private var selectedOption: DestinationSearchOptions = .location
    var body: some View {
        VStack(alignment: .leading, spacing: 40){
            // x button
            Button{
                withAnimation(.snappy){
                    show.toggle()
                }
            }
            label:{
                Image(systemName: "xmark.circle")
                    .imageScale(.large)
                    .foregroundStyle(.black)
            }
            
            VStack(alignment:.leading){
                if selectedOption == .location{
                    Text("Where to?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    HStack{
                        Image(systemName: "magnifyingglass")
                            .imageScale(.small)
                        TextField("Search destinations", text: $destination)
                            .font(.subheadline)
                        Spacer()
                        
                    }
                    .frame(height: 44)
                    .padding(.horizontal)
                    .overlay{
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(lineWidth: 1)
                            .foregroundStyle(Color(.systemGray4))
                    }

                }
                else{
                    CollapsedPickerView(title: "Where", description: "Add destination")
                }
            }
            
            .padding()
            .frame(height: selectedOption == .location ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            // clipshape and overlay do similar job here ,but the distinction should be important
            // clipshape crops anything outside the frame dimnesions, while overlay just puts a view // on top and doesn't remove.
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation{selectedOption = .location}
                
            }
            
            // date selecton view
            
            VStack{
                if selectedOption == .dates{
                    HStack{
                        Text("show expanded view")
                        Spacer()
                    }
                    
                }
                
                else{
                    CollapsedPickerView(title: "When", description: "Add dates")
                    
                }
            }
            .padding()
            .frame(height: selectedOption == .dates ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation{selectedOption = .dates}
                
            }
            
            
            // num guests view
            VStack{
                if selectedOption == .guests{
                    HStack{
                        Text("show expanded view")
                        Spacer()
                    }
                    
                }
                else{
                    CollapsedPickerView(title:"Who", description: "Add guests")
                }
                
            }
            .padding()
            .frame(height: selectedOption == .guests ? 120 : 64)
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .shadow(radius: 10)
            .onTapGesture {
                withAnimation{selectedOption = .guests}
            }
            
            
        }
        .padding()
        Spacer()
        
        
        
        
    
    }
}
                   
                   
     


struct CollapsedPickerView: View {
    let title: String
    let description: String
    var body: some View {
        VStack{
            
            HStack{
                Text(title)
                    .foregroundStyle(.gray)
                Spacer()
                
                Text(description)
                
            }
            .fontWeight(.semibold)
            .font(.subheadline)
            
        }
    }
}
                   
   

#Preview {
    DestinationSearchView(show: .constant(false))
}


