//
//  ContentView.swift
//  TodoApp
//
//  Created by T Krobot on 29/7/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var todos = [
        Todo(title: "Buy 20kg of Nutella", subtitle: "hoesfdjh"),
        Todo(title: "Call a courier for 20kg of Nutella", subtitle: "jldasjfk"),
        Todo(title: "Pack 20kg of Nutella in office"),
        Todo(title: "Buy health insurance"),
        Todo(title: "Eat 20kg of Nutella"),
        Todo(title: "Regret life decisions")
    ]
    
    var body: some View {
        NavigationStack {
            List($todos) { $todo in
                //using bindings as without it todo is a constant
                HStack{
                    Image(systemName:
                    todo.isCompleted ? "checkmark.circle.fill" : "circle")
                    .onTapGesture {
                        todo.isCompleted.toggle()
                    }
                    VStack(alignment: .leading) {
                        Text(todo.title)
                            .strikethrough(todo.isCompleted)
                        if !todo.subtitle.isEmpty {
                            Text(todo.subtitle)
                                .font(.footnote)
                                .foregroundColor(.gray)
                                .strikethrough(todo.isCompleted)
                                
                        }
                    }
                }

            }
            .navigationTitle("Todos")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
