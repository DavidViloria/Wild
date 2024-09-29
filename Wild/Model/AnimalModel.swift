//
//  AnimalModel.swift
//  Wild
//
//  Created by David Viloria Ortega on 24/09/24.
//
import SwiftUI

struct AnimalModel: Codable, Identifiable {
  let id: String
  let name: String
  let headline: String
  let description: String
  let link: String
  let image: String
  let gallery: [String]
  let fact: [String]
}
