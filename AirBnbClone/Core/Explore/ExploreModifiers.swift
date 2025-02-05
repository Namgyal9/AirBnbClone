//
//  ExploreModifiers.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/5/25.
//

import SwiftUI


struct DestinationView: ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding()
            .background(.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
        // clipshape and overlay do similar job here ,but the distinction should be important
        // clipshape crops anything outside the frame dimnesions, while overlay just puts a view // on top and doesn't remove.
            .shadow(radius: 10)
        
    }
}

