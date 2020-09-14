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
        //ScrollView(.vertical, showsIndicators: false) {
            List {
                ImageRow(items: items)
            }
            .navigationBarTitle(Text("All \(categoryName)"))
        //}
        
        
        /*ScrollView(.horizontal, showsIndicators: false) {
            HStack(alignment: .top, spacing: 0) {
                ForEach(self.items) { article in
                    NavigationLink(
                        destination: ArticleDetail(
                            article: article
                        )
                    ) {
                        CategoryItem(article: article)
                    }
                }

            }
        }
        .frame(height: 185)*/
    }
}

struct ViewAll_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ViewAll(
                categoryName: articleData[0].category.rawValue,
                items: Array(articleData.prefix(3))
            )
        }
    }
}
