//
//  BackgroundRectangleView.swift
//  WeatherApp
//
//  Created by Paul Oggero on 12/03/2022.
//

import SwiftUI

struct BackgroundRectangleView: View {
    var startPoint: UnitPoint = .topLeading
    var endPoint: UnitPoint = .bottomTrailing
    
    var body: some View {
        RoundedRectangle(cornerRadius: 50)
            .fill(LinearGradient(colors: [.accentColor,  Color("Dutch White")], startPoint: startPoint, endPoint: endPoint))
            .shadow(radius: 6)
    }
}

struct BackgroundRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundRectangleView()
    }
}
