//
//  ContentView.swift
//  Weather-App
//
//  Created by Fady Sameh on 7/14/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgrounndView(isNight: $isNight)
            VStack {
                CityTextName(cityName: "Cupertino, CA")
                MainWeatherStatusView(
                    image: isNight ? "moon.stars.fill" : "cloud.sun.fill",
                    temperature: isNight ? 38 : 76
                )
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", image: "wind.snow", temperature: 35)
                    WeatherDayView(dayOfWeek: "WED", image: "sun.max.fill", temperature: 88)
                    WeatherDayView(dayOfWeek: "THU", image: "cloud.bolt.fill", temperature: 50)
                    WeatherDayView(dayOfWeek: "FRI", image: "snow", temperature: 74)
                    WeatherDayView(dayOfWeek: "SAT", image: "cloud.moon.rain.fill", temperature: 74)
                }
                
                Spacer()
                
//                WeatherButton(title: "Change day time", textColor: .blue, backgroundColor: .white)
                
                Button("Change day time") {
                    isNight.toggle()
                }
                .font(.system(size: 20, weight: .bold, design: .default))
                .frame(width: 280, height: 50, alignment: .center)
                .foregroundColor(.blue)
                .background(.white)
                .cornerRadius(10)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}

//struct WeatherButton: View {
//    var title: String
//    var textColor: Color
//    var backgroundColor: Color
//    var isNight = false
//    
//    var body: some View {
//        Button(title) {
////            isNight.toggle()
//        }
//        .font(.system(size: 20, weight: .bold, design: .default))
//        .frame(width: 280, height: 50, alignment: .center)
//        .foregroundColor(textColor)
//        .background(backgroundColor)
//        .cornerRadius(10)
//    }
//}
