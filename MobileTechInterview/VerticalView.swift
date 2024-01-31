//
//  File.swift
//  MobileTechInterview
//
//  Created by Elio Fernandez on 30/01/2024.
//

import Foundation
import SwiftUI

struct VerticalView: View {
    
    let laptop: LaptopsModel
    
    var body: some View {
        HStack {
            ImageView(laptop: laptop)
            VStack (alignment: .leading) {
                Text(laptop.title)
                    .font(.title2)
                    .bold()
                    .padding(.bottom, -3.0)
                
                Text(laptop.description)
                    .lineLimit(3)
                    .truncationMode(.tail)
            }
        }
    }
}

struct HorizontalView: View {
    
    let laptop: LaptopsModel
    
    var body: some View {
        HStack {
            ImageView(laptop: laptop)
            VStack (alignment: .leading) {
                Text(laptop.title)
                    .font(.title)
                    .bold()
                    .padding()
                
                Text(laptop.description)
                    
            }
        }
    }
}
