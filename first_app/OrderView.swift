//
//  OrderView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct OrderView: View {
    @ObservedObject var orders:OrderModel
    var body: some View {
        VStack {
                NavigationStack{
                    List($orders.orderItems){$order in
                        NavigationLink(value: order){
                            OrderRowView(order: $order)
                            //                        Text(order.item.name)
                                .padding(4)
                                .background(.regularMaterial , in: RoundedRectangle(cornerRadius: 10))
                                .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                                .padding(.bottom, 5)
                                .padding([.leading,.trailing],7)
                        }.navigationDestination(for: OrderItem.self) { order in
                            OrderDetailView(orderItem: $order, presentSheet: .constant(false), newOrder: .constant(false))
                        }.navigationTitle("Your Order")
                    }
                }
                .padding(.top,65)
               
//                .padding()
                .background(.ultraThinMaterial)
//            .padding()
            Button("Delete Order"){
                if !orders.orderItems.isEmpty{orders.removeLast()}
            }
            .padding(5)
            .background(.regularMaterial,in: Capsule())
            .padding(7)
        }
        .background(Color("Surf"))
        .padding(.bottom)
        .background(.ultraThinMaterial)
    }
}

#Preview {
    OrderView(orders: OrderModel())
}
