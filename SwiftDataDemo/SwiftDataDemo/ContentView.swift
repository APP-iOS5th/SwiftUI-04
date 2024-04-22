//
//  ContentView.swift
//  SwiftDataDemo
//
//  Created by Jungman Bae on 4/22/24.
//

import SwiftUI
import SwiftData

@Model
class Task {
    var id: UUID
    var title: String
    var completed: Bool
    
    init(id: UUID = UUID(), title: String, completed: Bool = false) {
        self.id = id
        self.title = title
        self.completed = completed
    }
}

struct ContentView: View {
    @Query var tasks: [Task]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(tasks) { task in
                    HStack {
                        Button(action: {
                            toggleCompletion(for: task)
                        }) {
                            Image(systemName: task.completed ? "checkmark.circle.fill" : "circle")
                        }
                        Text(task.title)
                        Spacer()
                        if task.completed {
                            Image(systemName: "checkmark")
                        }
                    }
                    .swipeActions(edge: .trailing) {
                        Button(role: .destructive) {
                            deleteTask(task)
                        } label: {
                            Label("Delete", systemImage: "trash")
                        }
                    }
                }
            }
            .navigationTitle("Tasks")
            .toolbar {
                ToolbarItem(placement:.topBarTrailing) {
                    Button(action: addTask) {
                        Image(systemName: "plus")
                    }
                }
            }
        }
    }
    
    func addTask() {
        let newTask = Task(title: "Task #\(tasks.count+1)")
        modelContext.insert(newTask)
    }
    
    func deleteTask(_ task: Task) {
        modelContext.delete(task)
    }
    
    func toggleCompletion(for task: Task) {
        task.completed.toggle()
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Task.self)
}
