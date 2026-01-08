//
//  MainTabView.swift
//  weather
//
//  Created by Ziyan on 2026/1/7.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("微信", systemImage: "message.fill")
                }
            
            Tab2View()
                .tabItem {
                    Label("通讯录", systemImage: "person.2.fill")
                }
            
            Tab3View()
                .tabItem {
                    Label("发现", systemImage: "safari.fill")
                }
            
            Tab4View()
                .tabItem {
                    Label("我", systemImage: "person.fill")
                }
        }
    }
}

#Preview {
    MainTabView()
}
