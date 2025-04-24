//
//  inicio.swift
//  Netflix
//
//  Created by Turma01-23 on 24/04/25.
//

import SwiftUI

struct inicio: View {
    @State var name: String = "Pedro"
    
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.blue, .black]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                VStack {
                    HStack {
                        Text("Para \(name)")
                            .padding()
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        Spacer()
                        Image(systemName: "arrow.down.to.line.compact")
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                        Image(systemName: "magnifyingglass")
                            .padding()
                            .font(.system(size: 30))
                            .foregroundColor(.white)
                    }
                    HStack {
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                            .border(Color.white)
                            .foregroundColor(.clear)
                            .frame(width: 70, height: 40)
                            .padding(.leading)
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                            .border(Color.white)
                            .foregroundColor(.clear)
                            .frame(width: 70, height: 40)
                            .padding(.leading)
                        RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Corner Radius@*/10.0/*@END_MENU_TOKEN@*/)
                            .border(Color.white)
                            .foregroundColor(.clear)
                            .frame(width: 70, height: 40)
                            .padding(.leading)
                        
                        Spacer()
                    }.padding(.bottom)
                    ZStack {
                        Image("house")
                            .resizable()
                            .frame(width:350, height:470)
                            .cornerRadius(20)
                        VStack {
                            Spacer()
                            HStack {
                                Text("Médico").foregroundStyle(.white)
                                Text("•")
                                    .foregroundColor(.blue)
                                    .font(.system(size: 30))
                                Text("Diálogo afiado").foregroundStyle(.white)
                                
                            }
                            ZStack {
                                HStack {
                                    NavigationLink(destination: series_page()) {
                                        Rectangle()
                                            .frame(width: 150, height: 50)
                                            .cornerRadius(10)
                                            .foregroundStyle(.white)
                                    }
                                    Rectangle()
                                        .frame(width: 150, height: 50)
                                        .cornerRadius(10)
                                        .foregroundStyle(.white.opacity(0.3))
                                }
                                HStack {
                                    HStack {
                                        Image(systemName: "play.fill")
                                        Text("Assistir")
                                    }.frame(width: 150, height: 50)
                                    HStack {
                                        Image(systemName: "plus").foregroundStyle(.white)
                                        Text("Minha Lista").foregroundStyle(.white)
                                    }.frame(width: 150, height: 50)
                                }
                            }
                        }
                    }
                    HStack {
                        Text("Continuar assistindo como \(name)")
                            .padding()
                            .font(.system(size: 18))
                            .foregroundColor(.white)
                        Spacer()
                        
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    inicio()
}
