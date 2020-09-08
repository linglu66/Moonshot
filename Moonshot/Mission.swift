//
//  Mission.swift
//  Moonshot
//
//  Created by Design Work on 2020-09-08.
//  Copyright © 2020 Ling Lu. All rights reserved.
//

import Foundation



struct Mission: Codable, Identifiable{
    
    struct crewMember: Codable{
        let name: String
        let role: String
    }
    
    let id: Int
    let crew: [crewMember]
    let description: String
    let launchDate: Date?
    
    var formattedLaunchDate: String{
        if let launchDate = launchDate{
            let formatter = DateFormatter()
            formatter.dateStyle = .long
            return formatter.string(from: launchDate)
        }else{
            return "n/a"
        }
        
    }
    
    var displayName: String{
        "Apollo \(id)"
    }
    
    var image: String{
        "apollo\(id)"
    }

}
