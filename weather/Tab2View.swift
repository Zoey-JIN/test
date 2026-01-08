//
//  Tab2View.swift
//  weather
//
//  Created by Ziyan on 2026/1/7.
//

import SwiftUI

struct Tab2View: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            Text("我是tab2")
                .font(.system(size: 24))
        }
    }
}

#Preview {
    Tab2View()
}
