//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by LinkedIn User on 11/14/22.
//

import SwiftUI

struct MenuItemView: View {
    @State private var addedItem: [String] = []
    @Binding var item: MenuItem
    @ObservedObject var orders: OrderModel
    var body: some View {
        VStack {
            HStack {
                Text(item.name)
                    .font(.title)
                    .fontWeight(.semibold)
                    .foregroundStyle(.ultraThickMaterial)
                    .padding(.leading)
                    
                
                
                if let image = UIImage(named: "\(item.id)_lg"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                        .padding([.top,.bottom],5)
                    //                    .clipShape(RoundedRectangle(cornerRadius:10))
                        .cornerRadius(15)
                        
                } else {
                    Image("surfboard_lg")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(.degrees(180))
                }
                
            }
            .background(.linearGradient(colors: [Color("Surf"),Color("Sky").opacity(0.1)], startPoint: .leading, endPoint: .trailing), in:Capsule())
            .shadow(color:.teal,radius: 5,x:8,y:8)
            VStack(alignment: .leading) {
                
                ScrollView {
                    Text(item.description)
                        .font(.custom("Georgia",size: 18,relativeTo: .body))
                }
                Button{
                    addedItem.append("1")
                    orders.addOrder(item, quantity: 1)
                    
                }
            label: {
                HStack(alignment:.center,spacing: 10){
                    Spacer()
                    Text(item.price, format: .currency(code: "USD"))
                        Image(systemName: addedItem.count > 0 ?"cart.fill.badge.plus"  :  "cart.badge.plus")
                    Spacer()
                        
                    }
                    
                }
            .disabled(item.id < 0)
                .padding(10)
                .background(.orange,in: Capsule())
                .foregroundStyle(.white)
                .shadow(radius: 8)
                .padding(8)
            }
        }
    }
}

struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemView(item: .constant(testMenuItem),orders: OrderModel())
    }
}
