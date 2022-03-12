//
//  TodayView.swift
//  WeatherApp
//
//  Created by Paul Oggero on 12/03/2022.
//

import SwiftUI

struct TodayView: View {
    var body: some View {
        ZStack {
            Color.accentColor
                .ignoresSafeArea()
            
            VStack {
                
                TodaySumupView()
                
                
                HStack(spacing: 5) {
                    HourlySumupView()
                    HourlySumupView()
                    HourlySumupView()
                    HourlySumupView()
                    HourlySumupView()
                }
                
                
                ZStack {
                    BackgroundRectangleView()
                    
                    VStack {
                        Button {
                            //
                        } label: {
                            Text("Show 7 days")
                        }
                        .tint(Color("Hunter Green"))
                        .buttonStyle(.bordered)
                        .clipShape(Capsule())
                        .frame(maxWidth: .infinity, alignment: .topTrailing)
                        .padding()
                        
                        Spacer()
                    }
                }
            }
            .padding(.horizontal)
            
        }
        
    }
}

struct TodayView_Previews: PreviewProvider {
    static var previews: some View {
        TodayView()
            .preferredColorScheme(.light)
.previewInterfaceOrientation(.portrait)
    }
}
