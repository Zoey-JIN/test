//
//  ContentView.swift
//  weather
//
//  Created by Ziyan on 2026/1/7.
//

import SwiftUI

struct Forecast: Identifiable {
    let id = UUID()
    let day: String
    let icon: String
    let temp: Int
}

struct ContentView: View {
    @State private var degree = 73
    @State private var isDark = false
    private let forecasts: [Forecast] = [
        Forecast(day: "周二", icon: "cloud.sun.fill", temp: 70),
        Forecast(day: "周三", icon: "sun.max.fill", temp: 80),
        Forecast(day: "周四", icon: "wind.snow", temp: 65),
        Forecast(day: "周五", icon: "sunset.fill", temp: 28),
        Forecast(day: "周六", icon: "cloud.sun.fill", temp: 33)
    ]

    var body: some View {
        ZStack {
            LinearGradient(
                colors: isDark ? [.black, .gray] : [.blue, .white],
                startPoint: .topLeading,
                endPoint: .bottomLeading
            )
            .ignoresSafeArea()

            VStack {
                HeaderView(degree: $degree, isDark: $isDark)

                Spacer().frame(height: 72)

                HStack(spacing: 25) {
                    ForEach(forecasts) { forecast in
                        DayForecastView(
                            day: forecast.day,
                            icon: forecast.icon,
                            temp: forecast.temp
                        )
                    }
                }

                Spacer()

                PrimaryButton(title: "一键清除雾霾") {
                    degree += 1
                }
            }
            .padding()
        }
    }
}

struct HeaderView: View {
    @Binding var degree: Int
    @Binding var isDark: Bool

    var body: some View {
        VStack {
            Text("北京")
                .font(.system(size: 45))
                .foregroundStyle(.white)
                .onTapGesture { isDark.toggle() }

            Image(systemName: "cloud.sun.fill")
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 120, height: 120)

            Text("\(degree)°")
                .font(.system(size: 73))
                .foregroundStyle(.white)
                .onTapGesture { degree -= 1 }
        }
        .padding()
    }
}

struct DayForecastView: View {
    let day: String
    let icon: String
    let temp: Int

    var body: some View {
        VStack {
            Text(day)
                .foregroundStyle(.white)
            Image(systemName: icon)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48)
            Text("\(temp)°")
                .font(.system(size: 30))
                .foregroundStyle(.white)
        }
    }
}

struct PrimaryButton: View {
    let title: String
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .bold()
                .font(.title2)
                .frame(width: 280, height: 50)
                .background(.white)
                .foregroundStyle(.black)
                .cornerRadius(10)
        }
    }
}

#Preview {
    ContentView()
}
