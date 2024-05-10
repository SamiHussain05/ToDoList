//
//  ContentView.swift
//  ToDoList
//
//  Created by Sami Hussain on 19/02/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            ToDoUI().tabItem {
                Label{
                    Text("Todo")
                } icon: {
                    Image(systemName: "list.bullet.clipboard")
                        .resizable()
                        .scaledToFit()
                }
                
            }
            Doing().tabItem {
                Label{
                    Text("Doing")
                } icon: {
                    Image(systemName: "list.bullet.clipboard")
                }
            }
        }
    }
    }
    
    

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TaskModel())
    }
}
