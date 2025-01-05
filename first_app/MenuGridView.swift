//
//  MenuGridView.swift
//  first_app
//
//  Created by MAC on 05/01/2025.
//

import SwiftUI

struct MenuGridView: View {
    var menu: [MenuItem]
    @State var favoriteMenu: Set<MenuItem> = []
    @Binding var selectedItem:MenuItem
    let columnLayout = Array(repeating: GridItem(), count: 3)
    let favoritesColumnLayout = Array(repeating: GridItem(), count: 5)
    var body: some View {
        VStack{
            Text("Favorites")
            LazyVGrid(columns: favoritesColumnLayout){
                ForEach(Array(favoriteMenu)){ favorite in
                    FavoriteTileView(menuItem: favorite)
                        .onTapGesture {
                            selectedItem = favorite
                        }
                        .onLongPressGesture{
                            favoriteMenu.remove(favorite)
                        }
                }
            }
            Text(selectedItem.name)
            ScrollView{
                LazyVGrid(columns: columnLayout){
                    ForEach(menu){ item in
                        MenuItemTileView(menuItem: item)
                            .onTapGesture(count:2) {
                                print("Double Tap")
                                favoriteMenu.insert(item)
                            }
                            .onTapGesture {
                                selectedItem = item
                            }
                           
                           
                           
                    }
                }
            }
        }
        
    }
}

#Preview {
    MenuGridView(menu: MenuModel().menu,selectedItem: .constant(testMenuItem))
}
