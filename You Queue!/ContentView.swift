//
//  ContentView.swift
//  You Queue!
//
//  Created by Harrison Putt on 3/3/2023.
//

import SwiftUI

struct SubjectView: View {
    var Subject:String
    var body: some View {
        VStack {
            
        }
    }
}


struct ContentView: View {
    var body: some View {
        
        NavigationView {
            VStack{
                NavigationLink(destination: SubjectView(Subject: "English Advanced")) {
                    Text("English Advanced")
                            .padding(10)
                            .font(.title)
                            .border(Color.green, width: 2)
                        
                    .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "English Advanced")) {
                    Text("Maths Advanced")
                        .padding(10)
                        .font(.title)
                        .border(Color.orange, width: 2)
                    
                        .padding(30)
                }
                
                NavigationLink(destination: SubjectView(Subject: "English Advanced")) {
                    Text("Software Design and Development")
                        .padding(10)
                        .font(.title)
                        .border(Color.red, width: 2)
                    
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
