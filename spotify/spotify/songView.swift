//
//  songView.swift
//  spotify
//
//  Created by Turma01-23 on 25/04/25.
//

import SwiftUI

struct songView: View {
    var recebe: SongModel
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.red,.orange,.yellow,.green,.blue,.purple,.pink]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
            
            VStack {
                Spacer()
                AsyncImage(url: URL(string: recebe.cover)) {image in image
                        .resizable()
                } placeholder: {
                    Color.white
                }
                .frame(width:200, height: 200)
                
                Text(recebe.name)
                    .foregroundStyle(.white)
                    .font(.system(size:23))
                Text(recebe.author)
                    .foregroundStyle(.white)
                    .font(.system(size:17))
                
                Spacer()
                
                HStack {
                    Image(systemName: "shuffle").padding(.horizontal)
                    Spacer()
                    Image(systemName: "backward.end.fill")
                    Spacer()
                    Image(systemName: "play.fill").font(.system(size: 50))
                    Spacer()
                    Image(systemName: "forward.end.fill")
                    Spacer()
                    Image(systemName: "repeat").padding(.horizontal)
                }.foregroundColor(.white)
                    .font(.system(size: 30))

                Spacer()
            }
            
            
        }
    }
}

#Preview {
    songView(recebe: SongModel(id: 0, name: "aaaaa", cover: " ", author: "aaaaa"))
}
