//
//  OrderRowView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct OrderRowView: View {
    let order:Int
    var body: some View {
        HStack(content: {
           Text("Your Order Item \(order)")
           Spacer()
           Text(19.00,format: .currency(code: "USD"))
       })
    }
}

#Preview {
    OrderRowView(order: 1)
}
