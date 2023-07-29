//
//  File.swift
//  TodoApp
//
//  Created by T Krobot on 29/7/23.
//


import Foundation

struct Todo: Identifiable {
    
    var id = UUID() // Universally Unique IDentifier
    var title: String
    var subtitle = ""
   // var subtitle: String?
    //using optionals and optional bindings 
    var isCompleted = false
    
}
