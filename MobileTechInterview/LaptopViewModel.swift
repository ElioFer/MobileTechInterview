//
//  LaptopViewModel.swift
//  MobileTechInterview
//
//  Created by Elio Fernandez on 29/01/2024.
//

import Foundation

class LaptopViewModel: ObservableObject {
    
    @Published var listLaptops: [LaptopsModel] = []
    
    func getLaptops() {
        guard let url = URL(string: "https://private-f0eea-mobilegllatam.apiary-mock.com/list") else {
            return
        }
        
        let task = URLSession.shared.dataTask(with: url) { [weak self] data, response, error in
            guard let data = data, let response = response as? HTTPURLResponse, response.statusCode == 200, error == nil else {
                return
            }
            do {
                let listLaptops = try JSONDecoder().decode([LaptopsModel].self, from: data)
                DispatchQueue.main.async {
                    self?.listLaptops = listLaptops
                }
            } catch {
                print(error.localizedDescription)
            }
        }
        task.resume()
    }
}




