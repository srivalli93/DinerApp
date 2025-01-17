//
//  ItemName.swift
//  DineWine
//
//  Created by Srivalli Kanchibotla on 1/16/25.
//

import SwiftUI

struct ItemRow: View {
    let item : MenuItem
    let colors: [String: Color] = ["D": .purple, "G": .black, "V": .green, "S": .blue, "N": .red]
    
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
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.white)
            }
        }
    }
}

#Preview {
    ItemRow(item: MenuItem.example)
}
