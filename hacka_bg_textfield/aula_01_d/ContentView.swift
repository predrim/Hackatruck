//
//  ContentView.swift
//  aula_01_d
//
//  Created by Turma01-23 on 16/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var textInput = ""
    @State var isShowingBasicAlert = false
    var body: some View {
            
        ZStack {
            Image("background")
                .resizable()
                .frame(width: 800, height: 850)
                .opacity(0.2)
                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
            VStack {
                Text("Bem vindo, Fulano").font(.system(size:35)).padding(.top, 45)
                TextField("Nome", text: $textInput).multilineTextAlignment(.center)
                Spacer()
                
            }
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .shadow(radius: 10)
                Image("truck")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                Button("Entrar") {
                    isShowingBasicAlert = true
                }
                .offset(y: 260)
                .alert("ALERTA !", isPresented: $isShowingBasicAlert) {
                } message: {
                Text("Você irá iniciar o desafio da aula agora")
                }
            }
            
        }
        
        
    }
        
    }


#Preview {
    ContentView()
}
