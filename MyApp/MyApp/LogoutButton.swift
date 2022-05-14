//
//  LogoutButton.swift
//  MyApp
//
//  Created by aluno on 14/05/22.
//

import SwiftUI

struct LogoutButton: View {
    
    @AppStorage("login") var isLogin: Bool = false
    
    var body: some View {
        Button {
            isLogin = false
        } label: {
            Text("SAIR")
                .padding()
                .foregroundColor(.white)
                .foregroundColor(.white)
                .font(.system(size: 14, weight: .bold, design: .monospaced))
        }
        .frame(width: 70, height: 50)
        .background(Color("ColorClara"))
        .clipShape(RoundedRectangle(cornerRadius: 5))
    }
}

struct LogoutButton_Previews: PreviewProvider {
    static var previews: some View {
        LogoutButton()
    }
}
