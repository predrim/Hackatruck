//
//  ContentView.swift
//  aula_01_b
//
//  Created by Turma01-23 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Image("image")
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width:200, height:200)
                    .scaledToFit()
                    .padding()
                VStack (spacing: 10) {
                    Text("Hackatruck").foregroundStyle(.red)
                    Text("77 Universidades").foregroundStyle(.blue)
                    Text("5 regiões do Brasil").foregroundStyle(.orange)
                    
                }
                }
            }
        }
    }


#Preview {
    ContentView()
}
