//
//  Article.swift
//  Test3
//
//  Created by Nathan Stout on 5/5/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI

struct Article: Hashable, Codable, Identifiable {
  var id: Int
  fileprivate var imageName: String
  var category: Category
  var subcategory: Subcategory
  var color: Color
}

enum Category: String, CaseIterable, Codable, Hashable {
    
    case hats = "Hats"
    case jackets = "Jackets"
    case shirts = "Shirts"
    case sweaters = "Sweaters"
    case hoodies = "Hoodies"
    case shorts = "Shorts"
    case pants = "Pants"
    case shoes = "Shoes"
    case socks = "Socks"
    case underwear = "Underwear"
}

enum Subcategory: String, CaseIterable, Codable, Hashable {
    case casual = "Casual"
    case dress = "Dress"
    case active = "Active"
}

enum Color: String, CaseIterable, Codable, Hashable {
    case red = "Red"
    case blue = "Blue"
    case green = "Green"
    case gray = "Gray"
    case black = "Black"
    case white = "White"
    case yellow = "Yellow"
    case pink = "Pink"
}

extension Article {
  var image: Image {
    ImageStore.shared.image(name: imageName)
  }
}
