//
//  ContentView.swift
//  You Queue!
//
//  Created by Harrison Putt on 3/3/2023.
//

import SwiftUI

struct SubjectView: View {
    @State private var teacher = "Joe Mama"
    var Subject:String
    var body: some View {
        NavigationView{
            VStack {
                Text("Hello World")
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
