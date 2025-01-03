//
//  first_appApp.swift
//  first_app
//
//  Created by MAC on 23/12/2024.
//

import SwiftUI

@main
struct first_appApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(menu: MenuModel().menu)
        }
    }
}
