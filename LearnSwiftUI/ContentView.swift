//
//  ContentView.swift
//  LearnSwiftUI
//
//  Created by Mohammad Azam on 6/14/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var taskName: String = ""
    @State private var tasks: [String] = []
    
    var body: some View {
        print("body")
        return VStack {
            TextField("Enter task", text: $taskName, onEditingChanged: { _ in }) {
                // commit
                tasks.append(taskName)
            }
            Spacer()
           
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
