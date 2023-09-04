//
//  TodoDetailView.swift
//  TodoApp
//
//  Created by T Krobot on 4/9/23.
//

import SwiftUI

struct TodoDetailView: View {
    
    @State var todo = Todo(title: "Hi", subtitle: "There is  nothing here yet")
    var body: some View {
        Form{
            TextField("Enter your todo", text: $todo.title)
            TextField("Add additional details", text: $todo.subtitle)
            Toggle("Is done?", isOn: $todo.isCompleted)
        }
        .navigationTitle("Todo detail")
    }
}
struct TodoDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TodoDetailView()
    }
}
