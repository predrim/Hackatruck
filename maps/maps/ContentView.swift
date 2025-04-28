//
//  ContentView.swift
//  maps
//
//  Created by Turma01-23 on 28/04/25.
//

import SwiftUI
import MapKit

struct Location: Hashable {
    let name: String
    let flag: String
    let description: String
    let latitude: Double
    let longitude: Double
}

struct ContentView: View {
    
    @State var locationArray: [Location] = [
        Location(
            name: "Pirâmides de Gizé",
            flag:
                "https://upload.wikimedia.org/wikipedia/commons/a/af/All_Gizah_Pyramids.jpg",
            description: "Pirâmides de Gizé é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. A necrópole está localizada a cerca de 9 km do interior do deserto para a cidade velha de Gizé, no Nilo, e cerca de 25 km a sudoeste do centro da cidade do Cairo, no local da antiga cidade egípcia de Mênfis. As pirâmides, que sempre tiveram grande importância como emblemas do antigo Egito no imaginário ocidental, foram popularizadas nos tempos helenísticos, quando a Grande Pirâmide foi listada por Antípatro de Sídon como uma das Sete Maravilhas do Mundo. É, de longe, a mais antiga das maravilhas do mundo antigo e a única que ainda existe.",
            latitude: 29.9792,
            longitude: 31.1320
        ),
        Location(
            name: "Pará Lanches",
            flag: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgKQyCrwYJGnLY1iphF0MIM88Scrg0hpFvIw&s",
            description: "Pará Lanches é uma lanchonete conhecida por seu humor e criatividade no menu, que vai além dos lanches comuns. Eles são conhecidos por oferecer opções inusitadas, como pizza de pé de galinha e bife de fígado, e por responder aos clientes com humor e ironia, criando uma atmosfera única e viral.",
            latitude:-22.8925373,
            longitude:-43.4802521)
    ]
    
    @State var auxStr = Location(
        name: "Pirâmides de Gizé",
        flag:
            "https://upload.wikimedia.org/wikipedia/commons/a/af/All_Gizah_Pyramids.jpg",
        description: "Pirâmides de Gizé é um sítio arqueológico localizado no planalto de Gizé, nos arredores do Cairo, Egito. A necrópole está localizada a cerca de 9 km do interior do deserto para a cidade velha de Gizé, no Nilo, e cerca de 25 km a sudoeste do centro da cidade do Cairo, no local da antiga cidade egípcia de Mênfis. As pirâmides, que sempre tiveram grande importância como emblemas do antigo Egito no imaginário ocidental, foram popularizadas nos tempos helenísticos, quando a Grande Pirâmide foi listada por Antípatro de Sídon como uma das Sete Maravilhas do Mundo. É, de longe, a mais antiga das maravilhas do mundo antigo e a única que ainda existe.",
        latitude: 29.9792,
        longitude: 31.1320
    )
    
    //FAZER VARIAVEL AUXILIAR DA SHEET
    
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: -14.2350, longitude: -51.9253),
            span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 100))
    )
    
    @State private var showSheet = false
    
    var body: some View {
        ZStack {
            Map(position: $position) {
                ForEach(locationArray, id: \.self) { e in
                    Annotation(e.name, coordinate: CLLocationCoordinate2D(latitude: e.latitude, longitude: e.longitude)) {
                        
                        Button() {
                            showSheet.toggle()
                        }label: {
                            Image(systemName: "mappin.circle.fill")
                                .resizable()
                                .foregroundStyle(.red)
                        }
                        .sheet(isPresented: $showSheet){
                            ZStack{
                                Color(.marelo)
                                VStack{
                                    AsyncImage(url: URL(string: e.flag)) { image in
                                        image
                                            .resizable()
                                            .aspectRatio(contentMode: .fill)
                                    }
                                    placeholder: {
                                        Image(systemName: "goforward")
                                            .frame(height:200)
                                    }
                                    .aspectRatio(contentMode: .fit)
                                    .frame(width:300)
                                    .padding()
                                    
                                    Text(e.name)
                                        .padding()
                                        .font(.system(size:25))
                                    Text(e.description)
                                        .frame(width: 350)
                                        .background(Color.brown)
                                    Spacer()
                                }
                            }
                        }
                        
                    }
                }
            }.ignoresSafeArea()
            VStack {
                Picker("Seleciona a localização", selection: $auxStr) {
                    ForEach(locationArray, id: \.self) { e in Text(e.name)}
                }.background(Color.marelo)
                    .frame(height: 50)
                Spacer()
            }
        }
    }
}


#Preview {
    ContentView()
}
