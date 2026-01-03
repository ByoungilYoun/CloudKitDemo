//
//  Model.swift
//  CloudKitDemo
//
//  Created by 윤병일 on 1/4/26.
//

import Foundation
import SwiftData

@Model
final class Entry {
  var id: UUID = UUID()
  var title: String = ""
  var details: String = ""
  
  init(title: String, details: String) {
    self.title = title
    self.details = details
  }
}
