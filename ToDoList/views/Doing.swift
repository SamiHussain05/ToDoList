//
//  Doing.swift
//  ToDoList
//
//  Created by Sami Hussain on 25/02/2024.
//

import SwiftUI

struct Doing: View {
    @EnvironmentObject var taskModel: TaskModel
    var body: some View {
        ZStack{
            Color(.systemMint)
                .ignoresSafeArea()
            VStack{
                Text("Doing")
                    .font(.title)
                    .bold()
                    .padding()
                    .background()
                    .cornerRadius(15)
                TextField("Type your task here...", text: $taskModel.createTask)
                    .padding()
                    .onSubmit {
                        taskModel.addItemsDoing()
                    }
                if(taskModel.doingtasks.count > 0){
                    List(taskModel.doingtasks){ word in
                        if (word.doing == true){
                            Text(word.task)
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

struct Doing_Previews: PreviewProvider {
    static var previews: some View {
        Doing().environmentObject(TaskModel())
    }
}
