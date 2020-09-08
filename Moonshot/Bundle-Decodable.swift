//
//  Bundle-Decodable.swift
//  Moonshot
//
//  Created by Design Work on 2020-09-08.
//  Copyright © 2020 Ling Lu. All rights reserved.
//

import Foundation

extension Bundle{
    func decode<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else{
            fatalError("Cannot find File")
        }
        
        guard let data = try? Data(contentsOf: url) else{
            fatalError("Cannot load \(file) from the bundle")
        }
        
        let decoder = JSONDecoder()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "y.MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        guard let loaded = try? decoder.decode(T.self, from: data)else{
            fatalError("Could not conver into astronaut struct")
        }
        
        return loaded
    }
        
    
}
