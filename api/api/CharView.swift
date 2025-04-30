//
//  charView.swift
//  api
//
//  Created by Turma01-23 on 29/04/25.
//

import SwiftUI

struct CharView: View {
    
    let personagem: HaPo
    
    var body: some View {
        VStack{
            HStack {
                AsyncImage(url: URL(string: (personagem.image)!))
                {image in image
                        .resizable()
                    .aspectRatio(contentMode: .fill)}
            placeholder: {
                Color.gray
            }
            .aspectRatio(contentMode: .fit)
            .frame(width: 70, height: 70)
            .padding(.top)
            .padding(.leading, 10)
                
            Text("\(personagem.name)").bold()
                
            Spacer()
            }
        }
    }
}



struct CharView_Previews: PreviewProvider {
    static var previews: some View {
        CharView(personagem: .init(id: "", name: "", alternate_names: [""], species: "", gender: "", house: "", dateOfBirth: "", yearOfBirth: 1, wizard: true, ancestry: "", eyeColour: "", hairColour: "", wand: Wand(wood: "", core: "", lenght: 1.0), patronus: "", hogwartsStudent: true, hogwartsStaff: true, actor: "", alternate_actors: [""], alive: true, image: ""))
    }
}
