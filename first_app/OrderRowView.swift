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
        VStack {
            HStack(content: {
                Text("Your Order Item \(order)")
                Spacer()
            })
            HStack (){
                Text("1")
                Text("@")
                Text("$19.90")
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
            }
        }
        .padding()
        .background(.thinMaterial)
        .clipShape(RoundedRectangle(cornerRadius: 15))
    }
}

#Preview {
    OrderRowView(order: 1)
}
