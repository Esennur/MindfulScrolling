//
//  UserInfo.swift
//  MindfulScrolling
//
//  Created by Zeynep Karatas on 6/1/25.
//

import SwiftUI

class UserInfo: ObservableObject {
    @Published var selectedApps: Set<String> = []
    @Published var selectedTime: Int = 5
    // Add any other shared user state
}
