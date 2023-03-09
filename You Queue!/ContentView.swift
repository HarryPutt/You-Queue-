//
//  ContentView.swift
//  You Queue!
//
//  Created by Harrison Putt on 3/3/2023.
//

import SwiftUI

struct Queue2View: View {
    var student:String
    var body: some View {
        VStack {
            Text("Chaitanya Reddy")
                .padding(10)
            Text("Benjamin Abdy")
                .padding(10)
            Text("Harris Awan")
                .padding(10)
            Text("Rowena Kite")
                .padding(10)
            Text("Alexandra Southern")
                .padding(10)
            Text("William Milne")
                .padding(10)
            Text("Joel Braatz")
                .padding(10)
            Text("Ms Tor")
                .padding(10)
            Text(student)
                .padding(10)
            NavigationLink(destination: QueueView(Teacher: student)) {
                Text("Leave Queue")
            }
        }
    }
}


struct QueueView: View {
    @State private var student = ""
    var Teacher:String
    var body: some View {
        VStack {
            Text("Chaitanya Reddy")
                .padding(10)
            Text("Benjamin Abdy")
                .padding(10)
            Text("Harris Awan")
                .padding(10)
            Text("Rowena Kite")
                .padding(10)
            Text("Alexandra Southern")
                .padding(10)
            Text("William Milne")
                .padding(10)
            Text("Joel Braatz")
                .padding(10)
            Text("Ms Tor")
                .padding(10)
            TextField("Enter your name here", text: $student)
                .multilineTextAlignment(.center)
                .padding(10)
            NavigationLink(destination: Queue2View(student: student)) {
                Text("Join Queue")
                    .padding(10)
            }
        }
        .navigationBarTitle(Teacher + " - Current Queue", displayMode:.inline)
    }
}


struct SubjectView: View {
    var Subject:String
    var body: some View {
        NavigationView{
            VStack {
                NavigationLink(destination: QueueView(Teacher: "Mrs James")) {
                    Text("Mrs James")
                        .padding(10)
                        .font(.title)
                        .border(Color.yellow, width: 2)
                        .background(Color.yellow)
                    
                        .padding(30)
                }
                NavigationLink(destination: QueueView(Teacher: "Ms Tor")) {
                    Text("Ms Tor")
                        .padding(10)
                        .font(.title)
                        .border(Color.red, width: 2)
                        .background(Color.red)
                    
                        .padding(30)
                }
                NavigationLink(destination: QueueView(Teacher: "Mr Gorton")) {
                    Text("Mr Gorton")
                        .padding(10)
                        .font(.title)
                        .border(Color.cyan, width: 2)
                        .background(Color.cyan)
                    
                        .padding(30)
                }
                NavigationLink(destination: QueueView(Teacher: "Mr Hordern")) {
                    Text("Mr Hordern")
                        .padding(10)
                        .font(.title)
                        .border(Color.green, width: 2)
                        .background(Color.green)
                    
                        .padding(30)
                }
                NavigationLink(destination: QueueView(Teacher: "Mrs Cochrane")) {
                    Text("Mrs Cochrane")
                        .padding(10)
                        .font(.title)
                        .border(Color.orange, width: 2)
                        .background(Color.orange)
                    
                        .padding(30)
                }
                NavigationLink(destination: QueueView(Teacher: "Miss Yang")) {
                    Text("Miss Yang")
                        .padding(10)
                        .font(.title)
                        .border(Color.mint, width: 2)
                        .background(Color.mint)
                    
                        .padding(30)
                }
            }
        }
    .navigationBarTitle(Subject, displayMode:.inline)
    }
}


struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack{
                
                NavigationLink(destination: SubjectView(Subject: "Business Studies")) {
                    Text("Business Studies")
                        .padding(10)
                        .font(.title)
                        .border(Color.yellow, width: 2)
                        .background(Color.yellow)
                    
                        .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "Economics")) {
                    Text("Economics")
                        .padding(10)
                        .font(.title)
                        .border(Color.cyan, width: 2)
                        .background(Color.cyan)
                    
                        .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "English Advanced")) {
                    Text("English Advanced")
                            .padding(10)
                            .font(.title)
                            .border(Color.green, width: 2)
                            .background(Color.green)
                        
                    .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "Maths Advanced")) {
                    Text("Maths Advanced")
                        .padding(10)
                        .font(.title)
                        .border(Color.orange, width: 2)
                        .background(Color.orange)
                    
                        .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "PDHPE")) {
                    Text("PDHPE")
                        .padding(10)
                        .font(.title)
                        .border(Color.mint, width: 2)
                        .background(Color.mint)
                    
                        .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "SDD")) {
                    Text("Software Design and Development")
                        .padding(10)
                        .font(.title)
                        .border(Color.red, width: 2)
                        .background(Color.red)
                    
                        .padding(30)
                }
                
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                    ToolbarItem(placement: .principal) {
                        Text("Subjects")
                            .font(.largeTitle.bold())
                            .accessibilityAddTraits(.isHeader)
                    }
                }
        }
            .foregroundColor(.blue)
            .padding(40)
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
