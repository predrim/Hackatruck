//
//  Modo2.swift
//  aula_05_b
//
//  Created by Turma01-23 on 23/04/25.
//

import SwiftUI

struct Modo2: View {
    @State var name: String = ""
    var body: some View {
        ZStack{
            Color(.azulHacka).ignoresSafeArea()
            VStack {
                Text("Modo 2").foregroundStyle(.white)
                    .font(.system(size:40))
                Spacer()
                ZStack {
                    RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                        .frame(width: 350, height: 150)
                        .foregroundStyle(.rosaHacka)
                    VStack {
                        TextField("Nome", text: $name).multilineTextAlignment(.center)
                            .foregroundStyle(.white)
                        Text("Bem-vindo, \(name)")
                            .foregroundStyle(.white)
                            .font(.system(size:30))
                    }
                    
                }
                Spacer()
            }
        }
    }
}

#Preview {
    Modo2()
}
