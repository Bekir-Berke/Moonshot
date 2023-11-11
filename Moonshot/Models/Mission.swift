//
//  Mission.swift
//  Moonshot
//
//  Created by Bekir Berke Yılmaz on 11.11.2023.
//

import Foundation
struct Mission: Codable, Identifiable{
    struct CrewRole: Codable{
        let name: String
        let role: String
    }
    
    let id: Int
    let launchDate: Date?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String{
        "Apollo \(id)"
    }
    var image: String{
        "apollo\(id)"
    }
    var formattedLauncDate: String{
        launchDate?.formatted(date: .abbreviated, time: .omitted) ?? "N/A"
    }
}
