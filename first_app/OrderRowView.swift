//
//  OrderRowView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct OrderRowView: View {
    @Binding var order:OrderItem
    var body: some View {
        VStack {
            HStack(content: {
                Text(order.item.name)
                Text("(\(order.item.crust.rawValue))")
                if(order.extraIngredients){
                    Image(systemName: "2.circle")
                
                }
                Spacer()
                Text(order.name)
                
            })
            HStack (alignment: .firstTextBaseline){
                Text(order.quantity,format: .number)
                Text("@")
                Text(order.item.price,format: .currency(code: "USD"))
                Spacer()
                Text(order.extPrice, format: .currency(code: "USD"))
                    .fontWeight(.semibold)
            }
        }
//        .padding()
        
        
    }
}

#Preview {
    OrderRowView(order: .constant(testOrderItem))
}
