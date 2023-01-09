//
//  WeatherDetailsView.swift
//  HackingWeather
//
//  Created by Mark Townsend on 12/30/22.
//

import SwiftUI

struct WeatherDetailsView: View {
    // The color we'll be using to tint our background
    let tintColor: Color

    // What type of residue to create, and its strength
    let residueType: Storm.Contents
    let residueStrength: Double

    var body: some View {
        ScrollView {
            VStack(spacing: 0) {
                ResidueView(type: residueType, strength: residueStrength)
                    .frame(height: 62)
                    .offset(y: 30)
                    .zIndex(1)

                RoundedRectangle(cornerRadius: 25)
                    .fill(tintColor.opacity(0.25))
                    .frame(height: 800)
                    .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 25))
                    .padding(.horizontal, 20)
            }
            .padding(.top, 200)
        }
    }
}

struct WeatherDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetailsView(tintColor: .blue, residueType: .rain, residueStrength: 200)
    }
}
