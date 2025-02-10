//
//  MainTabView.swift
//  AirBnbClone
//
//  Created by Namgyal Thily on 2/10/25.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView{
            ExploreView()
                .tabItem{Label("Explore", systemImage: "magnifyingglass")}
            WishlistsView()
                .tabItem{Label("Wishlists", systemImage: "heart")}
            ProfileView()
                .tabItem{Label("Profile", systemImage: "person")}
                
        }
    }
}

#Preview {
    MainTabView()
}
