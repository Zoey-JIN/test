//
//  Tab2View.swift
//  weather
//
//  Created by Ziyan on 2026/1/7.
//

import SwiftUI

struct Tab2View: View {
    @State private var showDetail = false

    var body: some View {
        NavigationStack {
            GeometryReader { proxy in
                ZStack {
                    Color.white
                        .ignoresSafeArea()

                    Text("我是tab2")
                        .font(.system(size: 24))

                    VStack {
                        Spacer()

                        Button {
                            showDetail = true
                        } label: {
                            Text("渐变按钮")
                                .font(.system(size: 16, weight: .semibold))
                                .foregroundStyle(.white)
                                .padding(.horizontal, 18)
                                .padding(.vertical, 12)
                                .background(
                                    LinearGradient(
                                        colors: [Color.blue, Color.purple],
                                        startPoint: .leading,
                                        endPoint: .trailing
                                    )
                                )
                                .cornerRadius(6)
                        }
                        // TabBar 常见高度约 49pt；再加一点安全区，避免被 Home Indicator 顶上来
                        .padding(.bottom, 49 + 20 + proxy.safeAreaInsets.bottom)
                    }
                }
                .navigationDestination(isPresented: $showDetail) {
                    Tab2DetailView(text: "这是你自定义的新页面文字")
                }
            }
        }
    }
}

#Preview {
    Tab2View()
}
