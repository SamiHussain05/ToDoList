//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Sami Hussain on 19/02/2024.
//

import SwiftUI

@main
struct ToDoListApp: App {
    @StateObject var taskModel: TaskModel = TaskModel()
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(taskModel)
        }
    }
}
