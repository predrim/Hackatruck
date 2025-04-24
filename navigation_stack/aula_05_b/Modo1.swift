//
//  Modo1.swift
//  aula_05_b
//
//  Created by Turma01-23 on 23/04/25.
//

import SwiftUI

struct Modo1: View {
    var body: some View {
        ZStack{
            Color(.azulHacka).ignoresSafeArea()
            VStack {
                Text("Modo 1").foregroundStyle(.white)
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
    }
}

#Preview {
    Modo1()
}
