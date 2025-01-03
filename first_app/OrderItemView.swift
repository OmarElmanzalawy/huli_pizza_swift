//
//  OrderItemView.swift
//  first_app
//
//  Created by MAC on 03/01/2025.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem:OrderItem
    @State private var quantity: Int = 1
    @State private var doubleIngredient = false
    @State private var pizzaCrust: PizzaCrust
    @State private var name: String = ""
    @State private var notes: String = ""
    init(orderItem: Binding<OrderItem>) {
        self._orderItem = orderItem
        self.pizzaCrust = orderItem.item.crust.wrappedValue
    }
    var body: some View {
        VStack(alignment:.leading){
            TextField("Name", text: $name)
            Toggle(isOn: $doubleIngredient){
                Text("Double Ingredients " + (doubleIngredient ? "Yes" : "No"))
            }
            Stepper(value: $quantity, in: 1...10){
                Text("\(quantity) " + (quantity == 1 ? "pizza" : "pizzas") )
            }
            Picker(selection: $pizzaCrust){
                ForEach(PizzaCrust.allCases,id: \.self){crust in
                    Text(crust.rawValue).tag(crust)
                }
                
            }label: {
                Text("Pizza Crust")
            }
            .pickerStyle(SegmentedPickerStyle())
            VStack(alignment: .leading){
                Text("Additional Notes")
                TextEditor(text: $notes)
            }
            .clipShape(RoundedRectangle(cornerRadius: 3))
            .shadow(radius: 0.7)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OrderItemView(orderItem: .constant(testOrderItem))
}
