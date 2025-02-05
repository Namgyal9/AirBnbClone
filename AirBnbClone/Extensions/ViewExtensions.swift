//
//  ViewExtensions.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/5/25.
//


import SwiftUI

extension View {
    func DestinationModifier() -> some View {
        self.modifier(DestinationView())
    }
}
