//
//  DetailView.swift
//  MobileTechInterview
//
//  Created by Elio Fernandez on 30/01/2024.
//

import SwiftUI

struct DetailView: View {
    
    let laptop: LaptopsModel
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: laptop.image)) { image in
                image
                    .resizable()
                
            } placeholder: {
                ProgressView()
            }
            .aspectRatio(contentMode: .fit)
            //.padding()
            
            Text(laptop.description)
                .font(.title3)
                .padding()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(laptop: MockData.laptop)
    }
}
