//
//  File.swift
//  TodoApp
//
//  Created by T Krobot on 29/7/23.
//


import Foundation

struct Todo: Identifiable { //when there is an identifiable, struct shld contain an id
    
    var id = UUID() // Universally Unique IDentifier
    //generates random numbers
    var title: String
    var subtitle = ""
   // var subtitle: String?
    //using optionals and optional bindings 
    var isCompleted = false
    
}
