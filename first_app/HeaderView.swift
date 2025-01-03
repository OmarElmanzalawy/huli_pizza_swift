//
//  HeaderView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders: OrderModel
    var body: some View {
        VStack {
            ZStack (alignment: .bottomTrailing) {
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("Huli Pizza Company")
                    .font(.custom("Georgia", size: 30,
                            relativeTo: .title))
                    .foregroundColor(Color("Sky"))
            }
            
        }
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
