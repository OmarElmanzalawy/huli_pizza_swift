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
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            StatusBarView(orders: orders, showOrders: $showOrders)
            
            if showOrders{
                OrderView(orders: orders)
                
            }
            else{
                MenuItemView(item: $selectedItem,orders: orders)
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView(menu: menu,selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [Color("Surf"),Color("Sky"),], startPoint: .topLeading, endPoint: .bottom))
        .environmentObject(orders)
    }
}

#Preview {
    ContentView(menu: MenuModel().menu)
}
