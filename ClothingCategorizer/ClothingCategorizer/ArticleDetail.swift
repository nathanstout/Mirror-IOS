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
        Text("This is a place holder")
    }
}

struct ArticleDetail_Previews: PreviewProvider {
    static var previews: some View {
        ArticleDetail(article: articleData[0])
    }
}
