//
//  MenuItemView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct MenuItemView: View {
    var body: some View {
        VStack{
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
            }else{
                Image("surfboard_lg")
            }
        }
            Text("Margherita")
            Text("Description")
    }
}

#Preview {
    MenuItemView()
}
