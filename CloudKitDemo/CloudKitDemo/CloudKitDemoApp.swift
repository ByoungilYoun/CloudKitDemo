//
//  CloudKitDemoApp.swift
//  CloudKitDemo
//
//  Created by 윤병일 on 1/4/26.
//

import SwiftUI
import SwiftData

@main
struct CloudKitDemoApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
            .modelContainer(for: Entry.self)
        }
    }
}
