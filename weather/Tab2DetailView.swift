//
//  Tab2DetailView.swift
//  weather
//
//  Created by Ziyan on 2026/1/7.
//

import SwiftUI

struct Tab2DetailView: View {
    let text: String

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()

            Text(text)
                .font(.system(size: 24))
        }
        .navigationTitle("详情")
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack {
        Tab2DetailView(text: "这是一个新页面")
    }
}

