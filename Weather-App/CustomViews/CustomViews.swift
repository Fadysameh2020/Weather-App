//
//  CustomViews.swift
//  Weather-App
//
//  Created by Fady Sameh on 8/18/24.
//

import SwiftUI

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var image: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .foregroundStyle(.white)
                .font(.system(size: 16, weight: .medium))
            
            Image(systemName: image)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            Text("\(temperature)°")
                .foregroundStyle(.white)
                .font(.system(size: 28, weight: .medium))
        }
    }
}

struct BackgrounndView: View {
    @Binding var isNight: Bool
    
    var body: some View {
//        LinearGradient(colors: [isNight ? .black : .blue, isNight ? .gray : .white], startPoint: .topLeading, endPoint: .bottomTrailing)
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextName: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundStyle(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var image: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: image)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .foregroundStyle(.white)
                .font(.system(size: 70, weight: .medium))
        }
        .padding(.bottom, 40)
    }
}

//struct WeatherButton: View {
//    var title: String
//    var textColor: Color
//    var backgroundColor: Color
//    
//    var body: some View {
//        Text(title)
//            .frame(width: 280, height: 50)
//        foregroundStyle(textColor)
//            .background(backgroundColor)
//            .font(.system(size: 20, weight: .bold, design: .default))
//            .cornerRadius(10)
//    }
//}
