//
//  ContentView.swift
//  aula_4_a
//
//  Created by Turma01-23 on 22/04/25.
//

import SwiftUI

struct ContentView: View {
    @State var value: Int = 0
    @State var img : String = "interrogacao"
    
    @State var km : Double = 0
    @State var t : Double = 0
    @State var result: Double = 0
    
    @State var clr : Color = .gray
    
    var body: some View {
        
        ZStack {
            clr.ignoresSafeArea()
            VStack {
                
                //Distância
                Text("Digite a **distância** (km):")
                
                TextField("0", value:  $km, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white.opacity(1).frame(height:25).cornerRadius(100))
                    .multilineTextAlignment(.center)
                    .frame(width:200, height:30)
                
                //Tempo
                Text("Digite o **tempo** (h):")
                
                TextField("0", value:  $t, format: .number)
                    .keyboardType(.decimalPad)
                    .textContentType(.oneTimeCode)
                    .padding()
                    .background(Color.white.opacity(1).frame(height:25).cornerRadius(100))
                    .multilineTextAlignment(.center)
                    .frame(width:200, height:30)
                
                Button("Calcular") {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
                    result = km / t
                    
                    switch result {
                            case 0..<10:
                                img = "tartaruga"
                                clr = .verdeClaro
                            case 10..<30:
                                img = "elefante"
                                clr = .azulClaro
                            case 30..<70:
                                img = "avestruz"
                                clr = .laranjaClaro
                            case 70..<90:
                                img = "leao"
                                clr = .vermelhoClaro
                            case 90...130:
                                img = "guepardo"
                                clr = .amareloClaro
                            default:
                                img = "interrogacao"
                    }
                    
                }
                .background(Color.black)
                .buttonStyle(.bordered)
                .foregroundColor(.orange)
                .cornerRadius(10)
                
                Text("\(result, specifier: "%.1f") km/h").font(.system(size:40))
                    .padding()
                
                Image(img)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width:300, height:300)
                    .padding()
                
                //Tabelinha
                ZStack {
                    Color.black
                    HStack {
                        // NOMES
                        VStack {
                            HStack {
                                Text("TARTARUGA")
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                            }
                            HStack {
                                Text("ELEFANTE")
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                            }
                            HStack {
                                Text("AVESTRUZ")
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                            }
                            HStack {
                                Text("LEÃO")
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                            }
                            HStack {
                                Text("GUEPARDO")
                                    .foregroundStyle(.white)
                                    .multilineTextAlignment(.center)
                            }
                        }
                        
                        //KM/H
                        VStack {
                            HStack {
                            Text("(0 - 9.9km/h)")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                        }
                            HStack {
                            Text("(10 - 29.9km/h)")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                        }
                            HStack {
                            Text("(30 - 69.9km/h)")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                        }
                            HStack {
                            Text("(70 - 89.9km/h)")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                        }
                            HStack {
                            Text("(90 - 130km/h)")
                                .foregroundStyle(.white)
                                .multilineTextAlignment(.center)
                        }
                        
                        }
                        
                        //CORES
                        VStack {
                            HStack {
                                
                        }
                            HStack {

                        }
                            HStack {
 
                        }
                            HStack {

                        }
                            HStack {

                        }
                        
                        }

                    }
                }
                .frame(width: 300)
                .cornerRadius(20)
                
                Spacer()
            }
            
        }.background(clr)

    }
}

#Preview {
    ContentView()
}
