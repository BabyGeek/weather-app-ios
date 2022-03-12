//
//  HourlySumupView.swift
//  WeatherApp
//
//  Created by Paul Oggero on 12/03/2022.
//

import SwiftUI

struct HourlySumupView: View {
    var body: some View {
        ZStack {
            BackgroundRectangleView()

            VStack {
                Text("11h")
                    .font(.title3)
                Spacer()
                Image("sun")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                Spacer()
                Text("25°")
                    .font(.title3)
            }
            .padding(.vertical)
        }
    }
}

struct HourlySumupView_Previews: PreviewProvider {
    static var previews: some View {
        HourlySumupView()
    }
}
