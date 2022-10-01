//
//  ContentView.swift
//  PythonInteroperability
//
//  Created by Michele Manniello on 01/10/22.
//

import SwiftUI

struct ContentView: View {
    @State var showResult: Bool = false
    @State var reslut : String = ""
    var body: some View {
        VStack {
            Button {
             let value =  runPythonCode()
               reslut =  value.description
                showResult.toggle()
            } label: {
                Text("run Python Code")
            }
            if(showResult){
                Text(reslut)
            }

        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
