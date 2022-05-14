//
//  ExitOpition.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct ExitOpition: View {
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Spacer()
            Text("Entrar")
                .padding()
            
                .foregroundColor(.white)
                .background(.purple)
                .clipShape(Rectangle())
                
        }
    }
}

struct ExitOpition_Previews: PreviewProvider {
    static var previews: some View {
        ExitOpition()
    }
}
