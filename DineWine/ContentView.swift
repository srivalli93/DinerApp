//
//  ContentView.swift
//  DineWine
//
//  Created by Srivalli Kanchibotla on 10/9/24.
//

import SwiftUI

struct ContentView: View {
    let menu = Bundle.main.decode([MenuSection].self, from: "menu.json")
    
    var body: some View {
        NavigationView {
            List {
                ForEach(menu) { section in
                    Section(section.name) {
                        ForEach(section.items) { item in
                            NavigationLink(destination: Text(item.name)) {
                                ItemRow(item: item)
                            }
                                           
                        }
                    }
                    
                }
            }
            .navigationTitle("Menu")
            .listStyle(.grouped)
        }
    }
}

#Preview {
    ContentView()
}
