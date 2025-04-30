//
//  ContentView.swift
//  api
//
//  Created by Turma01-23 on 29/04/25.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = ViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                ScrollView {
                    VStack {
                        ForEach(vm.personagens) {char in
                            NavigationLink (destination: tela2(personagem: char)) {
                                HStack {
                                    CharView(personagem: char)
                                }
                            }.foregroundStyle(.black)
                        }
                        
                    }
                    .onAppear(perform: vm.fetch)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
