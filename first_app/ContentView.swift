//
//  ContentView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct ContentView: View {
    var orders: [Int] = [1,2,3,4,52]
    var showOrders: Bool = true
    var body: some View {
        VStack {
            HeaderView()
            if showOrders{
                OrderView(orders: orders)
            }
            else{
                MenuItemView()
                MenuView()
            }
            Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
