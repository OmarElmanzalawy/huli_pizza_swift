//
//  MenuView2.swift
//  first_app
//
//  Created by MAC on 12/01/2025.
//

import SwiftUI

struct MenuView2: View {
    var menu: [MenuItem]
    @State private var selectedItem:MenuItem? = nil
    var body: some View {
        NavigationSplitView{
            List(menu,selection: $selectedItem){ item in
                NavigationLink(value:item){
                    MenuRowView(item: item)
                }
            }
        }detail: {
            MenuDetailView(item: $selectedItem)
        }
    }
}

#Preview {
    MenuView2(menu: MenuModel().menu)
}
