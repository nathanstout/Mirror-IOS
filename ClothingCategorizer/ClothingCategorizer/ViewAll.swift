//
//  SubcategoryList.swift
//  Test3
//
//  Created by Nathan Stout on 6/10/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI

struct ViewAll: View {
    var categoryName: String
    var items: [Article]
    
    var body: some View {
            if #available(iOS 14.0, *) {
              ImageRow(items: items)
                .navigationBarTitle(Text("All \(categoryName)"))
            } else {
              // Fallback on earlier versions
            }
    }
}

struct ViewAll_Previews: PreviewProvider {
    static var previews: some View {
        ViewAll(
            categoryName: articleData[0].category.rawValue,
            items: Array(articleData.prefix(3))
        )
  
    }
}
