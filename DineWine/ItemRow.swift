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
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.black, lineWidth: 2))
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                Text("$\(item.price)")
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
