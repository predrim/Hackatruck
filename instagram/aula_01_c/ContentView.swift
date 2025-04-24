//
//  ContentView.swift
//  aula_01_c
//
//  Created by Turma01-23 on 15/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HStack {
                Text("username").padding(.leading)
                Spacer()
                Image(systemName: "gobackward")
                Image(systemName: "line.horizontal.3").padding(.leading)
            }
            
            
            HStack {
                Circle()
                    .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .foregroundStyle(.gray)
                VStack {
                    HStack {
                        VStack {
                            Text("8").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Posts").font(.system(size:12))
                        }.padding()
                        VStack {
                            Text("12k").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Seguidores").font(.system(size:12))
                        }.padding()
                        VStack {
                            Text("2k").fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                            Text("Seguindo").font(.system(size:12))
                        }.padding()
                    }
                    Button() {
                    }label: {
                        Text("Editar Perfil").padding(.horizontal, 70)
                            .frame(height: 16)
                            .foregroundColor(.black)
                    }.buttonStyle(.bordered)
                }
                
            }
            HStack {
                Text("Nome Sobrenome").padding(.leading).padding(.top).bold()
                Spacer()
            }
            HStack {
                Text("Lorem ipsum dolor sit amet, consectetur").padding(.leading)
                Spacer()
            }
            Spacer()
        }
    }
}

#Preview {
    ContentView()
}
