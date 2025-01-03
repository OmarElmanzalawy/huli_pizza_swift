//
//  MenuView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct MenuView: View {
    var menu: [MenuItem]
    @Binding var selectedItem: MenuItem
    var body: some View {
        List(MenuCategory.allCases, id: \.self) { category in
            Section{
                ForEach(menu.filter({$0.category == category})){
                    item in MenuRowView(item: item)
                        .onTapGesture {
                            print("Menu Click")
                            selectedItem = item
                        }
                    
                }
            }header: {
                Text(category.rawValue)
            }
            
        }
    }
}

#Preview {
    MenuView(menu: MenuModel().menu,selectedItem: .constant(testMenuItem))
}


