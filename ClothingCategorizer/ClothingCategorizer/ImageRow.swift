//
//  ImageRow.swift
//  Test3
//
//  Created by Nathan Stout on 6/10/20.
//  Copyright © 2020 Nathan Stout. All rights reserved.
//

import SwiftUI
import Combine

struct ImageRow: View {
    var items: [Article]
    
    var body: some View {
        var images: [[Int]] = []
        _ = (0...(items.count - 1)).publisher
        .collect(2)
        .collect()
        .sink(receiveValue: { images = $0 })
        
        return ForEach(0..<images.count, id: \.self) { array in
            HStack {
                ForEach(images[array], id: \.self) { number in
                    self.items[number].image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(5)
                }
            }
        }
    }
}

struct ImageRow_Previews: PreviewProvider {
    static var previews: some View {
        ImageRow(items: Array(articleData.prefix(3)))
    }
}
