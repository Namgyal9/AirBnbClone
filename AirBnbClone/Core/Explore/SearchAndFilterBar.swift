//
//  SearchAndFilterBar.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/3/25.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            VStack(alignment:.leading, spacing: 2){
                Text("where to")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere - Any Week - Add guests")
                    .font(.caption2)
                    .foregroundStyle(.gray)
                
            }
            Spacer()
            Button(){
                //MARK: TODo
                
            }
            label:{
                Image(systemName:"gear")
                    .foregroundStyle(.black)
            }
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding()
    }
}

#Preview {
    SearchAndFilterBar()
}
