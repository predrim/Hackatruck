//
//  ContentView.swift
//  spotify
//
//  Created by Turma01-23 on 25/04/25.
//

import SwiftUI

struct SongModel: Identifiable {
    var id: Int
    var name: String
    var cover: String
    var author: String
}

let songs = [
    SongModel(id: 0,
              name: "Vale Nada Vale Tudo",
              cover: "https://static.wikia.nocookie.net/pudimclopedia/images/8/8e/S2la3KS9.png/revision/latest?cb=20201027164956&path-prefix=pt-br",
              author: "Ednaldo Pereira"),
    SongModel(id: 1,
              name: "Bille Jean",
              cover: "https://upload.wikimedia.org/wikipedia/pt/0/0e/Billie_Jean.jpg",
              author: "Michael Jackson"),
    SongModel(id:2,
              name: "Toma Milkshake de Morango?",
              cover: "https://s2-receitas.glbimg.com/_Rf31UDMhD0x1O_QGpVSeyH2gHM=/0x0:359x343/984x0/smart/filters:strip_icc()/s.glbimg.com/po/rc/media/2012/10/25/23_29_52_400_milk_shake.jpg",
              author: "Nóó... é muito cremoso"),
    SongModel(id: 3,
              name: "Olha, se você não me ama",
              cover: "https://cdn-images.dzcdn.net/images/artist/9d8a9be7640f1c7f62ac651cc304a2d4/500x500.jpg",
              author: "Manoel Gomes"),
    SongModel(id: 4,
              name: "Ontem eu comi pipoca com sal",
              cover: "https://us-tuna-sounds-images.voicemod.net/35e975f9-27b2-4ba9-9c1a-906a1de949ac-1699038265828.png",
              author: "Palhaço Cassarola"),
    SongModel(id: 5,
              name: "Rep do kaneki descomtrolado",
              cover: "https://i1.sndcdn.com/artworks-CSHIWKz8CIPEg2ym-OuFw2Q-t500x500.jpg",
              author: "JOÃO PEDRO")

]

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                LinearGradient(gradient: Gradient(colors: [.red,.orange,.yellow,.green,.blue,.purple,.pink]), startPoint: .top, endPoint: .bottom).ignoresSafeArea()
                ScrollView {
                    VStack {
                        Image("paraguaio")
                            .resizable()
                            .frame(width:250, height: 250)
                            .padding()
                        
                        HStack {
                            Text("A ATUALIZAÇÃO DA LISTA MAIS GAY")
                                .foregroundStyle(.white)
                                .font(.system(size: 20))
                                .padding(.leading, 20)
                                .bold()
                            Spacer()
                        }
                        HStack {
                            Image("paraguaio")
                                .resizable()
                                .frame(width:30, height: 30)
                                .padding(.leading, 20)
                            
                            Text("paraguaio")
                                .foregroundStyle(.white)
                                .bold()
                            
                            Spacer()
                        }
                        
                        ForEach(songs) {
                            song in NavigationLink(destination: songView(recebe: song)){
                                
                                HStack {
                                    AsyncImage(url: URL(string: song.cover)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    } placeholder: {
                                        Color.gray
                                    }
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width: 70, height: 70)
                                    .padding(.top)
                                    .padding(.leading, 10)
                                    
                                    VStack {
                                        HStack {
                                            Text(song.name)
                                                .foregroundColor(.white)
                                                .bold()
                                            Spacer()
                                        }
                                        HStack {
                                            Text(song.author)
                                                .foregroundColor(.white)
                                                .font(.system(size: 15))
                                            Spacer()
                                        }
                                    }
                                    HStack {
                                        Image(systemName: "ellipsis")
                                            .foregroundColor(.white)
                                    }
                                    
                                    Spacer()
                                }
                                
                            }
                            
                            Spacer()
                            
                            
                        }
                        VStack {
                            Spacer()
                            HStack {
                                Text("Sugeridos")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 20))
                                Spacer()
                            }
                            ScrollView(.horizontal) {
                                HStack() {
                                    Image("1")
                                        .resizable()
                                        .frame(width: 190, height: 190)
                                    Image("1")
                                        .resizable()
                                        .frame(width: 190, height: 190)
                                    Image("1")
                                        .resizable()
                                        .frame(width: 190, height: 190)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}
    

#Preview {
    ContentView()
}
