//
//  ContentView.swift
//  MobileTechInterview
//
//  Created by Elio Fernandez on 29/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var viewModel = LaptopViewModel()
    
    @Environment(\.verticalSizeClass) var verticalSiClass
    @Environment(\.horizontalSizeClass) var horizontalSiClass
    
    var isLandscape: Bool { verticalSiClass == .compact}

    var body: some View {
        NavigationStack{
            List(viewModel.listLaptops, id: \.self) { laptop in
                NavigationLink(destination: DetailView(laptop: laptop)) {
                    if isLandscape {
                            HorizontalView(laptop: laptop)
                    } else {
                            VerticalView(laptop: laptop)
                    }
                }
                
            }
            .navigationTitle("List of Items")
            .onAppear {
                viewModel.getLaptops()
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



