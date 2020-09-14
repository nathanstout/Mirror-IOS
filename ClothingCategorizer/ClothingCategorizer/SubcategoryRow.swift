//
//  ArticleRow.swift
//  Test3
//
//  Created by Nathan Stout on 5/5/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI

struct SubcategoryRow: View {
    var subcategoryName: String
    var items: [Article]
  
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack(alignment: .bottom, spacing: 0) {
                Text(self.subcategoryName)
                    .font(.system(size: 24))
                    .bold()
                NavigationLink(destination: EmptyView()) {
                    Spacer()
                    Text("See All")
                    .font(.body)
                    .foregroundColor(.blue)
                    .baselineOffset(2)
                }.buttonStyle(PlainButtonStyle())
            }
            .padding(.leading, 15)
            .padding(.trailing, 15)
            .padding(.top, 10)
            .padding(.bottom, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
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
            .frame(height: 185)
        }
    }
}


struct CategoryItem: View {
    var article: Article
    var body: some View {
        VStack(alignment: .leading) {
           article.image
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .cornerRadius(5)
        }
        .padding(.leading, 15)
        .padding(.bottom, 15)
    }
}

struct SubcategoryRow_Previews: PreviewProvider {
    static var previews: some View {
      SubcategoryRow(
          subcategoryName: articleData[3].subcategory.rawValue,
          items: Array(articleData.suffix(4))
      )
    }
}
