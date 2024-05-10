//
//  TaskModel.swift
//  ToDoList
//
//  Created by Sami Hussain on 23/02/2024.
//

import Foundation

class TaskModel: ObservableObject{
    @Published var tasks: [Task] = []
    @Published var doingtasks: [Task] = []
    @Published var createTask: String = ""
    
    
    
    func addItemsToDo(){
        if(!createTask.trimmingCharacters(in: .whitespaces).isEmpty){
            tasks.append(Task(task: createTask, todo: true, doing: false))
            createTask = ""
        }
    }
    
    func addItemsDoing(){
        if(!createTask.trimmingCharacters(in: .whitespaces).isEmpty){
            doingtasks.append(Task(task: createTask, todo: false, doing: true))
            createTask = ""
        }
    }
}
