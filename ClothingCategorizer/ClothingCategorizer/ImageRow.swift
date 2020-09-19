//
//  ImageRow.swift
//  Test3
//
//  Created by Nathan Stout on 6/10/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI
import Combine

@available(iOS 14.0, *)
struct ImageRow: View {
    var items: [Article]
    
    var columns = [
      GridItem(spacing: 15),
      GridItem(spacing: 0)
    ]
  
    var body: some View {
      ScrollView {
        LazyVGrid(columns: columns, spacing: 15) {
          ForEach(items) { article in
            NavigationLink(
                destination: ArticleDetail(
                    article: article
                )
            ) {
                ViewAllItem(article: article)
            }
          }
        }
        .padding(.trailing)
        .padding(.leading)
      }
    }
}

struct ViewAllItem: View {
    var article: Article
    var body: some View {
        VStack(alignment: .leading) {
           article.image
            .renderingMode(.original)
            .resizable()
            .scaledToFit()
            .cornerRadius(5)
        }
    }
}


struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
      if #available(iOS 14.0, *) {
        ImageRow(items: Array(articleData.prefix(3)))
      } else {
        // Fallback on earlier versions
      }
    }
}
