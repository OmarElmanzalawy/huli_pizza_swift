//
//  OrderView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct OrderView: View {
    var orders:[Int]
    var body: some View {
        VStack{
            
            Label{
                Text(59.99,format: .currency(code: "USD"))
            }
        icon:{
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
        }
            HStack {
                
                Text("Order Pizza").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
            ScrollView{
                ForEach(orders,id: \.self){
                    order in OrderRowView(order: order)
                }
            }
        }
    }
}

#Preview {
    OrderView(orders: [1,2,3,4])
}
