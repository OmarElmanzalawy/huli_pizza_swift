//
//  ContentView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    var menu: [MenuItem]
    @StateObject  var orders: OrderModel = OrderModel()
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    @State private var showGridMenu: Bool = false
    
    var body: some View {
        TabView{
                VStack{
//                    
                    MenuItemView(item: $selectedItem,orders: orders)
                        .padding(5)
                        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                    if showGridMenu {
                        MenuGridView(menu: menu,selectedItem: $selectedItem)
                    }
                    else{
                        MenuView(menu: menu,selectedItem: $selectedItem)
                    }
                }
                .tabItem {
                    Label("Order",systemImage: "list.bullet")
                }
            VStack {
                HeaderView()
                    .shadow(radius: 5)
                StatusBarView(orders: orders, showOrders: $showOrders,showGridMenu: $showGridMenu)
                
//                if showOrders{
                    
                OrderView(orders: orders)
//                    .padding(/*@START_MENU_TOKEN@*/EdgeInsets()/*@END_MENU_TOKEN@*/)
                    
            }
            .tabItem {
                Label("Menu",systemImage: "cart")
            }
            }
            .padding()
            .background(.linearGradient(colors: [Color("Surf"),Color("Sky"),], startPoint: .topLeading, endPoint: .bottom))
            .environmentObject(orders)
        }
    }

#Preview {
    ContentView(menu: MenuModel().menu)
}
