//
//  VideoModel.swift
//  Wild
//
//  Created by David Viloria Ortega on 25/11/24.
//

import Foundation

struct Video: Codable, Identifiable {
    let id : String
    let name: String
    let headline: String
    
    var thumbnail: String{
        "video-\(id)"
    }
}
