//
//  StatusBarView.swift
//  first_app
//
//  Created by MAC on 03/01/2025.
//

import SwiftUI

struct StatusBarView:View {
    @ObservedObject var orders: OrderModel
    @Binding var showOrders: Bool
    var body: some View{
        HStack {
            Text("\(orders.orderItems.count) orders")
            Spacer()
            Button{
                showOrders.toggle()
            }label: {
                HStack{
                    Image(systemName: showOrders ? "cart": "menucard").font(.title2)
                    Text(showOrders ? "Cart" : "Menu")
                }
            }
            Spacer()
            Label{
                Text(orders.orderTotal,format: .currency(code: "USD"))
            }icon:{
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
        }
        .foregroundStyle(.white)
        .font(.title2)
//        .padding(5)
    }
}
    
    #Preview{
        StatusBarView(orders: OrderModel(), showOrders: .constant(false))
    }
