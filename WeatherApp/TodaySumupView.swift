//
//  TodaySumupView.swift
//  WeatherApp
//
//  Created by Paul Oggero on 12/03/2022.
//

import SwiftUI

struct TodaySumupView: View {
    var body: some View {
        ZStack {
            BackgroundRectangleView()
            
            
            VStack(spacing: 5) {
                CityTitleSumup()
                
                TemperatureSumup()
                
                Divider()
                
                DetailsSumup()
                
            }
        }
    }
}

struct CityTitleSumup: View {
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            Text("\(Image(systemName: "location")) Toulon")
            Image(systemName: "chevron.down")
            
        }
        .font(.title2)
        .foregroundColor(.primary)
        .padding(.top)
        
        HStack {
            Text("Sat. 12 March")
        }
        .font(.subheadline)
        .foregroundColor(.secondary)
    }
}
struct TemperatureSumup: View {
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image("sun")
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 150, alignment: .center)
            
            Text("26 °")
                .font(.system(size: 85)).bold()
                .foregroundStyle(LinearGradient(colors: [Color(.systemIndigo), .white], startPoint: .topLeading, endPoint: .bottomTrailing))
        }
    }
}

struct DetailsSumup: View {
    var body: some View {
        HStack {
            VStack {
                Text("13 km/h")
                    .font(.title3)
                    .padding()
                
                Image(systemName: "wind")
                    .font(.system(size: 32))
                
            }
            Divider()
            VStack {
                Text("13 %")
                    .font(.title3)
                    .padding()
                
                Image(systemName: "snow")
                    .font(.system(size: 32))
            }
            Divider()
            VStack {
                Text("45%")
                    .font(.title3)
                    .padding()
                
                Image(systemName: "humidity")
                    .font(.system(size: 32))
                
            }
        }
        .frame(maxHeight: 75)
        .padding(.bottom)
    }
}

struct TodaySumupView_Previews: PreviewProvider {
    static var previews: some View {
        TodaySumupView()
    }
}
