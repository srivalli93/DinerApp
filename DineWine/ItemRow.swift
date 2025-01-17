//
//  ItemName.swift
//  DineWine
//
//  Created by Srivalli Kanchibotla on 1/16/25.
//

import SwiftUI

struct ItemRow: View {
    let item : MenuItem
    
    var body: some View {
        HStack{
            Image(item.thumbnailImage)
            VStack(alignment: .leading) {
                Text(item.name)
                Text("$\(item.price)")
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
