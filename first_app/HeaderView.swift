//
//  HeaderView.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack {
            Image("surfBanner")
                .resizable()
            .scaledToFit()
            Text("Huli Pizza Company")
        }

    }
}

#Preview {
    HeaderView()
}
