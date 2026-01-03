//
//  ContentView.swift
//  CloudKitDemo
//
//  Created by 윤병일 on 1/4/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
  
  @Environment(\.modelContext) private var context
  @Query(sort: [SortDescriptor(\Entry.title)]) private var entries: [Entry]
  
  @State private var name: String = ""
  @State private var details: String = ""
  
  var body: some View {
    VStack {

      TextField("Enter Name", text: $name)
        .textFieldStyle(.roundedBorder)
      
      TextField("Details", text: $details)
        .textFieldStyle(.roundedBorder)
      
      Button("Save Entry") {
        let newEntry = Entry(title: name, details: details)
        context.insert(newEntry)
        try? context.save()
        name = ""
        details = ""
      }
      .buttonStyle(.borderedProminent)
      
      Divider()
      
      List(entries) { entry in
        Text(entry.title)
        Text(entry.details)
      }
    }
    .padding()
  }
}

#Preview {
  ContentView()
}
