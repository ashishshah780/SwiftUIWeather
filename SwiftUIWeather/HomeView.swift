//
//  ContentView.swift
//  SwiftUIWeather
//
//  Created by Ashish shah on 04/09/25.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack(alignment: .center) {
            bgColor
            bgView
            homeImageView
            weatherInfo
        }
    }
}

extension HomeView {
    
    var bgColor: some View {
        Color.background1
            .ignoresSafeArea()
    }
    
    var bgView: some View {
        Image(.background)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .ignoresSafeArea()
    }
    
    var homeImageView: some View {
        Image(.house)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: .infinity, alignment: .top)
            .padding(.top, 300)
    }
    
    var weatherInfo: some View {
        VStack {
            Text("Montreal")
                .font(.largeTitle)
            VStack {
                Text("19°")
                    .font(.system(size: 96, weight: .thin))
                    .foregroundStyle(.primary)
                +
                Text("\n")
                +
                Text("Mostly clear")
                    .font(.title3.weight(.semibold))
                    .foregroundStyle(.secondary)
                
                Text("H:24°   L:18°")
                    .font(.title3.weight(.semibold))
            }
            Spacer()
        }
        .foregroundStyle(.white)
        .padding(.top, 54)
    }
}

#Preview {
    HomeView()
}
