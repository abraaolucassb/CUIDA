//
//  ContentView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI


struct ContentView: View {
    
    @State var usuario: String = ""
    @State var senha: String = ""
    
    @AppStorage("login") var isLogin: Bool = false
    
    
    var body: some View {
        ZStack{
            Image("barragem_foto")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 1) {
                profileBall()
                
                Image("cuida_logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 350, height: 350)
                
                VStack {
                    
                    Button {
                        isLogin = true
                    } label: {
                        Text("ENTRAR")
                            .padding()
                            .foregroundColor(.white)
                            .background(Color("ColorMeioEscuro"))
                            .clipShape(RoundedRectangle(cornerRadius: 5))
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold, design: .monospaced))
                    }
                }
                .fullScreenCover(isPresented: $isLogin) {
                    TabsView()
                }
                
            }
            
        }
        
    }
    
    func circleImage(systemName: String) -> some View {
        Image(systemName: systemName)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 50)
            .padding(.leading)
            .foregroundColor(.gray)
    }
}


func profileBall() -> some View {
    Image("logo_barragem")
        .resizable()
        .scaledToFit()
        .frame(width: 250, height: 250)
        .padding(20)
        .foregroundColor(.white)
        .background(Color("ColorClara"))
        .clipShape(Circle())
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
