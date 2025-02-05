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
    @State private var startDate = Date()
    @State private var endDate = Date()
    @State private var numGuests = 1
    
    
    
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 40){
            
            HStack{
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
                
                Spacer()
                
                if !destination.isEmpty{
                    Button("Clear"){
                        destination = ""
                        
                    }
                    .foregroundStyle(.black)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }
                
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
            .DestinationModifier()
            .frame(height: selectedOption == .location ? 120 : 64)
            .onTapGesture {
                withAnimation{selectedOption = .location}
                
            }
            
            // date selecton view
            
            VStack(alignment:.leading){
                if selectedOption == .dates{
                    Text("When's your trip?")
                        .font(.title2)
                        .fontWeight(.semibold)
                    
                    VStack{
                        DatePicker("From:", selection: $startDate, in: Date()...,  displayedComponents: .date)
                        Divider()
                        DatePicker("To:", selection: $endDate, in: Date()..., displayedComponents: .date)
                    }
                    .foregroundStyle(.gray)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    
                }
                
                else{
                    CollapsedPickerView(title: "When", description: "Add dates")
                    
                }
            }
            .DestinationModifier()
            .frame(height: selectedOption == .dates ? 180 : 64)
            .onTapGesture {
                withAnimation{selectedOption = .dates}
                
            }
            
            
            // num guests view
            VStack(alignment:.leading){
                if selectedOption == .guests{
                    Group{
                        Text("Who's coming?")
                            .font(.title)
                            .fontWeight(.semibold)
                        
                        
                        Stepper(value: $numGuests,in: 1...50){
                            Text("\(numGuests) Adults")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                        }
                    }
                }
                else{
                    CollapsedPickerView(title:"Who", description: "Add guests")
                }
                
                
            }
            .DestinationModifier()
            .frame(height: selectedOption == .guests ? 120 : 64)
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


