//
//  ImageView.swift
//  MobileTechInterview
//
//  Created by Elio Fernandez on 30/01/2024.
//

import SwiftUI

struct ImageView: View {
    
    let laptop: LaptopsModel
    
    var body: some View {
        AsyncImage(url: URL(string: laptop.image)) { image in
            image
                .resizable()
        } placeholder: {
            Image(systemName: "photo.circle")
                .resizable()
                .frame(width: 110, height: 110)
        }
        .aspectRatio(contentMode: .fit)
        .padding()
    }
}
