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
            ZStack (alignment: .top) {
                

                
                ScrollView{
                    ForEach($orders.orderItems){order in
                        OrderRowView(order: order)
//                        Text(order.item.name)
                            .padding(4)
                            .background(.regularMaterial , in: RoundedRectangle(cornerRadius: 10))
                            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                            .padding(.bottom, 5)
                            .padding([.leading,.trailing],7)
                            
                            
                    }
                }
                .padding(.top,65)
                HStack {
                    
                    Text("Order Pizza").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    Spacer()
                    Label{
                        Text(orders.orderTotal,format: .currency(code: "USD"))
                    }
                icon:{
                    Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
                }
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            .padding()
            Button("Delete Order"){
                if !orders.orderItems.isEmpty{orders.removeLast()}
            }
            .padding(5)
            .background(.regularMaterial,in: Capsule())
            .padding(7)
        }
        .background(Color("Surf"))
    }
}

#Preview {
    OrderView(orders: OrderModel())
}
