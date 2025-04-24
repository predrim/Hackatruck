//
//  ContentView.swift
//  aula_05_b
//
//  Created by Turma01-23 on 23/04/25.
//

import SwiftUI

struct ContentView: View {
    @State private var showSheet = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color(.azulHacka).ignoresSafeArea()
                VStack {
                    Image("logo")
                        .resizable()
                        .frame(width: 300, height: 150)
                    
                    Spacer()
                    
                    NavigationLink(destination: Modo1()) {
                        Text("Modo 1").frame(width: 200, height: 100)
                            .foregroundColor(.white)
                    }.background(.rosaHacka)
                        .cornerRadius(10)
                    
                    NavigationLink(destination: Modo2()) {
                        Text("Modo 2").frame(width: 200, height: 100)
                            .foregroundColor(.white)
                    }.background(.rosaHacka)
                        .cornerRadius(10)
                    
                    Button() {
                        showSheet.toggle()
                    }label: {
                        Text("Modo 3")
                            .padding(.horizontal, 68)
                            .frame(height: 100)
                            .foregroundColor(.white)
                    }.background(.rosaHacka)
                        .cornerRadius(10)
                    
                    Spacer()
                }
                
            }.sheet(isPresented: $showSheet, content: {
                ZStack{
                    Color(.azulHacka).ignoresSafeArea()
                    VStack {
                        Text("Sheet View").foregroundStyle(.white)
                            .font(.system(size:40))
                        Spacer()
                        ZStack {
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                                .frame(width: 200, height: 150)
                                .foregroundStyle(.rosaHacka)
                            VStack {
                                Text("Nome: Tiago")
                                    .foregroundStyle(.white)
                                Text("Sobrenome: Pereira")
                                    .foregroundStyle(.white)
                            }
                        }
                        Spacer()
                    }
                }
                
            })
        }
    }
}

#Preview {
    ContentView()
}
