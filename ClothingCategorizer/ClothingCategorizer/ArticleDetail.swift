//
//  ArticleDetail.swift
//  Test3
//
//  Created by Nathan Stout on 5/6/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI

struct ArticleDetail: View {
    var article: Article
    
    var body: some View {
      VStack () {
          article.image
           .renderingMode(.original)
           .resizable()
           .scaledToFit()
           .cornerRadius(5)
            .padding(.top, 10)
           
          List {
              Section(header: Text(" Identifiers")) {
                  // Should be picker?
                  HStack {
                      Text("Category")
                      Spacer()
                    Text(article.category.rawValue)
                          .foregroundColor(.secondary)
                  }
                  
                  // Should be picker?
                  HStack {
                      Text("Subcategory")
                      Spacer()
                      Text(article.subcategory.rawValue)
                          .foregroundColor(.secondary)
                  }
              }
              Section(header: Text("Additional Identifiers")) {
                  // Should be picker?
                   HStack {
                       Text("Color")
                       Spacer()
                       Text(article.color.rawValue)
                          .foregroundColor(.secondary)
                   }
              }
          }
          .listStyle(GroupedListStyle())
          .navigationBarTitle(Text(""), displayMode: .inline)
      }
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: articleData[0])
    }
}
