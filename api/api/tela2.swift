//
//  tela2.swift
//  api
//
//  Created by Turma01-23 on 29/04/25.
//

import SwiftUI

struct tela2: View {
    let personagem: HaPo?
    
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: (personagem?.image)!))
            {image in image
                .resizable()
                .aspectRatio(contentMode: .fill)}
            placeholder: {
                Color.gray
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 250, height: 250)
            Text("Name:").bold()
            Text(personagem!.name).padding(.bottom)
            Text("Alternate Names:").bold()
            Text((personagem?.alternate_names!.joined(separator: "\n"))!).padding(.bottom)
            Text("Patronus:").bold()
            Text((personagem?.patronus)!).padding(.bottom)

            Spacer()
        }
    }
}

struct tela2_Previews: PreviewProvider {
    static var previews: some View {
        tela2(personagem: .init(id: "", name: "", alternate_names: [""], species: "", gender: "", house: "", dateOfBirth: "", yearOfBirth: 1, wizard: true, ancestry: "", eyeColour: "", hairColour: "", wand: Wand(wood: "", core: "", lenght: 1.0), patronus: "", hogwartsStudent: true, hogwartsStaff: true, actor: "", alternate_actors: [""], alive: true, image: ""))
    }
}
