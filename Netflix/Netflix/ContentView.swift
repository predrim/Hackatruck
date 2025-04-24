//
//  ContentView.swift
//  Netflix
//
//  Created by Turma01-23 on 24/04/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            inicio()
                .tabItem{
                    Label("Início", systemImage:"house.fill")
                }
            
            inicio()
                .tabItem{
                    Label("Novidades", systemImage:"play.rectangle.on.rectangle")
                }
            
            inicio()
                .tabItem{
                    Label("Minha Netflix", systemImage:"shared.with.you")
                }
        }.tint(.white)
        .onAppear() {
            UITabBar.appearance().backgroundColor = .black
        }
    }
}




#Preview {
    ContentView()
}
