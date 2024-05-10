//
//  ToDoUI.swift
//  ToDoList
//
//  Created by Sami Hussain on 24/02/2024.
//

import SwiftUI

struct ToDoUI: View {
    @EnvironmentObject var taskModel: TaskModel
    var body: some View {
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            VStack{
                Text("To Do List")
                    .font(.title)
                    .bold()
                    .padding()
                    .background()
                    .cornerRadius(15)
                TextField("Type your task here...", text: $taskModel.createTask)
                    .padding()
                    .onSubmit {
                        taskModel.addItemsToDo()
                    }
                if(taskModel.tasks.count > 0){
                    List(taskModel.tasks){ word in
                        if (word.todo == true){
                            Text(word.task)
                                .swipeActions(edge: .trailing) {
                                    Button {
                                        taskModel.doingtasks.append(Task(task: word.task, todo: false, doing: true))
                                        let index: Int = DeleteTask(ID: word.id)
                                        taskModel.tasks.remove(at: index)
                                    } label: {
                                        Image(systemName: "list.clipboard.fill")
                                    }.tint(.blue)

                                }
                        }
                    }.background(.mint)
                     .scrollContentBackground(.hidden)
                }
            }
        }
    }
    func DeleteTask(ID: Task.ID) -> Int{
        var count: Int = 0
        for i in taskModel.tasks{
            if (i.id == ID){
                return count
            }
            else{
                count += 1
            }
        }
        return -1
    }
}

struct ToDoUI_Previews: PreviewProvider {
    static var previews: some View {
        ToDoUI().environmentObject(TaskModel())
    }
}
