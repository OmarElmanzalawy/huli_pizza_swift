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
                .shadow(radius: 5)
            if showOrders{
                OrderView(orders: orders)
                
            }
            else{
                MenuItemView()
                    .padding(5)
                    .background(.thinMaterial, in: RoundedRectangle(cornerRadius: 10))
                MenuView()
            }
            Spacer()
        }
        .padding()
        .background(.linearGradient(colors: [Color("Surf"),Color("Sky"),], startPoint: .topLeading, endPoint: .bottom))
    }
}

#Preview {
    ContentView()
}
