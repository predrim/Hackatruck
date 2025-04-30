//
//  series_page.swift
//  Netflix
//
//  Created by Turma01-23 on 24/04/25.
//

import SwiftUI

struct series_page: View {
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            VStack {
                Image("imgserie")
                    .resizable()
                    .frame(width:396, height:210)
                HStack {
                    Text("Dr. House")
                        .padding(.leading, 5)
                        .foregroundStyle(.white)
                        .font(.system(size:25))
                        .bold()
                    Spacer()
                }
                HStack {
                    Text("2011")
                        .padding(.leading, 5)
                        .foregroundStyle(.gray)
                        .font(.system(size:15))
                    
                    Image("A16")
                        .resizable()
                        .frame(width: 25, height: 25)
                        .cornerRadius(3)
                    
                    Text("8 temporadas")
                        .foregroundStyle(.gray)
                        .font(.system(size:15))
                    
                    Spacer()
                }
                ZStack {
                    VStack {
                        Rectangle()
                            .frame(width: 390, height: 50)
                            .cornerRadius(5)
                            .foregroundStyle(.white)
                        
                        Rectangle()
                            .frame(width: 390, height: 50)
                            .cornerRadius(5)
                            .foregroundStyle(.white.opacity(0.2))
                    }
                    VStack {
                            HStack {
                                Image(systemName: "play.fill")
                                Text("**Continuar**")
                            }
                            .frame(width: 390, height: 50)
                            HStack {
                                Image(systemName: "arrow.down.to.line")
                                Text("**Baixar T2:E8**")
                            }.foregroundStyle(.white)
                                .frame(width: 390, height: 50)
                    }
                }
                Spacer()
            }
        }
    }
}

#Preview {
    series_page()
}
