//
//  CodableBundleExtension.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//

import Foundation

extension Bundle {
    
    func decode<T: Codable>(_ file: String) -> T {
        // Ubicar el archivo JSON
        guard let url = self.url(forResource: file, withExtension: nil) else {
            print("No se pudo localizar \(file) en el bundle.")
            return [] as! T // Devuelve un array vacío u objeto vacío para evitar el crash en previsualización
        }
        
        // Cargar los datos
        guard let data = try? Data(contentsOf: url) else {
            print("No se pudo cargar \(file) desde el bundle.")
            return [] as! T // Manejar el error y devolver un array vacío u objeto vacío
        }
        
        // Crear un decodificador
        let decoder = JSONDecoder()
        
        // Decodificar los datos
        guard let loadedData = try? decoder.decode(T.self, from: data) else {
            print("No se pudo decodificar \(file).")
            return [] as! T
        }
        
        return loadedData
    }
}
