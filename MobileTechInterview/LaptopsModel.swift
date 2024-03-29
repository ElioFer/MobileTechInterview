//
//  LaptopsModel.swift
//  MobileTechInterview
//
//  Created by Elio Fernandez on 29/01/2024.
//

import Foundation

struct LaptopsModel: Hashable, Decodable {
    let title: String
    let description: String
    let image: String
    
    }

struct MockData {
    static let laptop = LaptopsModel(title: "Macbook PRO", description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis dapibus varius sem, eu ultricies urna condimentum a. Suspendisse aliquam mi vel orci viverra consectetur. Morbi at diam neque. Nam commodo risus sit amet mi hendrerit, sed facilisis quam tincidunt. Nulla facilisi. Nam commodo ultricies dignissim. In tempor sapien mattis, suscipit dolor at, semper odio. Proin interdum sapien sit amet nibh tincidunt, luctus congue nunc viverra. Proin pharetra neque vel orci porta, et pharetra turpis venenatis. Nam volutpat aliquet ante, nec ullamcorper felis semper eget. Vivamus posuere suscipit gravida. Nunc ut efficitur turpis.", image: "https://picsum.photos/100/100?image=0")
}
