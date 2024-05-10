//
//  Task.swift
//  ToDoList
//
//  Created by Sami Hussain on 20/02/2024.
//

import Foundation

struct Task: Identifiable, Equatable{
    var id: UUID = UUID()
    var task: String
    var todo: Bool
    var doing: Bool
    
    mutating func makeDoing(){
        todo = false
        doing = true
    }
}

