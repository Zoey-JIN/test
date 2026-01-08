//
//  Tab3View.swift
//  weather
//
//  Created by Ziyan on 2026/1/7.
//

import SwiftUI

struct Tab3View: View {
    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            
            Text("我是tab3")
                .font(.system(size: 24))
        }
    }
}

#Preview {
    Tab3View()
}
