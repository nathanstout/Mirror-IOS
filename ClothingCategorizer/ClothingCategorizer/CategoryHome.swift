//
//  ArticleList.swift
//  Test3
//
//  Created by Nathan Stout on 5/6/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI

struct CategoryHome: View {
    var categoryName: String
    var items: [Article]
    
    var categories: [String: [Article]] {
        Dictionary(
            grouping: items,
            by: { $0.subcategory.rawValue }
        )
    }
    
    var body: some View {
            List {
                NavigationLink(
                    destination: ViewAll(
                        categoryName: categoryName, items: items
                    )
                ) {
                   Text("All \(categoryName)")
                }
                ForEach(categories.keys.sorted(), id: \.self) { key in
                    SubcategoryRow(subcategoryName: key, items: self.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationBarTitle(Text(self.categoryName))
      }
        
}

struct ArticleList_Previews: PreviewProvider {
    static var previews: some View {
      ForEach(["iPhone XS Max"], id: \.self) { deviceName in
          CategoryHome(categoryName: articleData[0].category.rawValue,
          items: Array(articleData.prefix(3)))
              .previewDevice(PreviewDevice(rawValue: deviceName))
              .previewDisplayName(deviceName)
      }
    }
}
