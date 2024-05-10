//
//  LoginScreen.swift
//  ToDoList
//
//  Created by Sami Hussain on 26/02/2024.
//

import SwiftUI

struct LoginScreen: View {
    @State var Username: String = ""
    @State var Password: String = ""
    var body: some View {
        ZStack{
            Color.orange
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Spacer()
                Text("Username")
                    .padding(.leading, 23.0)
                    .bold()
                    .font(.title)
                TextField("Username", text: $Username)
                    .padding()
                    .background(.white)
                    .cornerRadius(15)
                    .padding()
                Text("Password")
                    .padding(.leading, 23.0)
                    .bold()
                    .font(.title)
                TextField("Password", text: $Password)
                    .padding()
                    .background(.white)
                    .cornerRadius(15)
                    .padding()
                Spacer()
                NavigationLink(destination: ToDoUI()){
                    HStack{
                        Spacer()
                        Text("Dont have an account?")
                        Text("Sign up")
                            .bold()
                        Spacer()
                    }
                }
            }
            
        }
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}
