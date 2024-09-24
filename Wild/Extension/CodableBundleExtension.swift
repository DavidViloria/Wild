//
//  CodableBundleExtension.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import Foundation

extension Bundle {
    
    func decode(file: String) -> [CoverImage]{
        //Locate JSON File
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Failed to locate \(file)")
        }
        //Property for the Data
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Failed to load \(file)")
        }
        //Create a Decoder
        let decode = JSONDecoder()
        //Creade a property for decoder Data
        guard let loaded = try? decode.decode([CoverImage].self, from: data) else{
            fatalError("Failed to decode \(file)")
        }
        
        return loaded
    }
    /*
     func decode<T: Decodable>(_ type: T.Type, from file: String) throws -> T {
     let data = try Data(contentsOf: URL(fileURLWithPath: file))
     return try JSONDecoder().decode(T.self, from: data)
     }
     */
}
