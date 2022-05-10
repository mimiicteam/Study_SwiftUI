//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by NGUYEN MINH DUC on 03/05/2022.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        // URL
        guard let url = url(forResource: file, withExtension: nil) else {
            fatalError("Failed to load \(file) in bundle.")
        }
        
        // DATA
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // LOADED
        let decoder = JSONDecoder()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        print("Success!")
        return loaded
    }
}
