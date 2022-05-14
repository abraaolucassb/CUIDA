//
//  SwiftUIView 2.swift
//
//
//  Created by aluno on 19/04/22.
//

import SwiftUI

struct DetalheBarragem: View {
    
    let barragem: Barragem
    
    var body: some View {
        VStack {
        Text("O nome da barragem é \(barragem.name)")
            .background(Color.brown)
            Text((barragem.descricao))
                .padding()
        }
    }
}

struct DetalheBarragem_Previews: PreviewProvider {
    static var previews: some View {
        DetalheBarragem(barragem: Barragem(name: "OURO PRETO", descricao: "salve"))
    }
}
