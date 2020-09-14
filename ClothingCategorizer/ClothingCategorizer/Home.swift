//
//  CategoryHome.swift
//  Test3
//
//  Created by Nathan Stout on 5/6/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI

struct Home: View {
    var categories: [String: [Article]] {
        Dictionary(
            grouping: articleData,
            by: { $0.category.rawValue }
        )
    }
  
  var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: ViewAll(categoryName: "Clothes", items: articleData)) {
                    Text("All Clothes")
                }
                ForEach(categories.keys.sorted(), id: \.self) { key in
                  NavigationLink(destination: CategoryHome(categoryName: key, items: self.categories[key]!)) {
                      Text(key)
                  }
                }
                /*ForEach(Category.allCases, id: \.self) { category in
                    NavigationLink(destination: CategoryHome(categoryName: category.rawValue, items: self.categories[category.rawValue]!)) {
                        Text(category.rawValue)
                    }
                }*/
            }
          .navigationBarTitle(Text("Categories"))
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone XS Max"], id: \.self) { deviceName in
            Home()
          .previewDevice(PreviewDevice(rawValue: deviceName))
          .previewDisplayName(deviceName)
        }
    }
}
