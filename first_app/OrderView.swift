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
            
            HStack {
                
                Text("Order Pizza").font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Label{
                    Text(59.99,format: .currency(code: "USD"))
                }
            icon:{
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            }
            .padding()
            .background(.ultraThinMaterial)
            
            ScrollView{
                ForEach(orders,id: \.self){
                    order in OrderRowView(order: order)
                        .padding([.leading,.trailing],7)
                        .padding(.bottom, 5)
                }
            }
        }
        .padding()
        .background(Color("Surf"))
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}

#Preview {
    OrderView(orders: [1,2,3,4])
}
