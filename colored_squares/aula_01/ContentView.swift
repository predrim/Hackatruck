//
//  ContentView.swift
//  aula_01
//
//  Created by Turma01-23 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            HStack {
                Rectangle().size(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.red)
                    
                Spacer().frame(width: 130)
                
                Rectangle().size(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            
            Spacer().frame(height: 500)
            
            HStack {
                Rectangle().size(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.green)
                
                Spacer().frame(width: 130)
                
                Rectangle().size(width: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
                    .padding()
                    .foregroundColor(.yellow)
            }
        
    }
}

#Preview {
    ContentView()
}
