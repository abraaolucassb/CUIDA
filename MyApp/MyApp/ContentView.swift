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
        ZStack {
            Image("barragem_foto")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack(alignment: .center, spacing: 130) {
                profileBall()
//                funKeyprof()
                
                Text("SEJA BEM-VINDO(A) AO NOSSO APLICATIVO! AQUI VOCÊ PODERÁ SABER TUDO SOBRE A SITUAÇÃO DAS BARRAGENS EM MINAS GERAIS, ROTAS DE FUGA E MUITO MAIS!")
                    .padding(32)
                    .foregroundColor(.white)
                    .background(Color("ColorMeioEscuro"))
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold, design: .monospaced))
                    .frame(width: 350)

                
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
    
//    func funKeyprof() -> some View {
//        VStack (spacing: 20){
//            HStack(alignment: .top, spacing: 15){
//                circleImage(systemName: "person.fill")
//
//
//                VStack(alignment: .leading, spacing: 10){
//                    //            Text("Usuário")
//                    //            HStack {
//                    TextField("Insira aqui seu usuário", text: $usuario)
////                        .padding()
////                        .background(.gray)
////                        .cornerRadius(7)
//
//                    Divider()
//                        .frame(height: 0.5)
//                        .background(.black)
//                }
//                .padding(.trailing)
//
//            }
//            HStack(alignment: .top, spacing: 15){
////                CircleImageView(systemName: "key.fill")
//                circleImage(systemName: "key.fill")
//
//
//                VStack(alignment: .leading, spacing: 10){
//                    //            Text("Usuário")
//                    //            HStack {
//                    TextField("Insira aqui sua senha", text: $senha)
//
//                    Divider()
//                        .frame(height: 0.5)
//                        .background(.black)
//                }
//                .padding(.trailing)
//
//            }
//
//        }
//
//    }
    
    
    func circleImage(systemName: String) -> some View {
        Image(systemName: systemName)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .padding(.leading)
            .foregroundColor(.gray)
    }
}

func loginButton() -> some View {
//    Button {
        VStack(alignment: .leading, spacing: 10){
        Text("Entrar")
            
            .padding()

            .foregroundColor(.white)
            .background(.brown)
            .clipShape(RoundedRectangle(cornerRadius: 5))
    
  }
// }
}

func profileBall() -> some View {
    Image(systemName: "cloud.drizzle.fill")
        .resizable()
        .scaledToFit()
        .frame(width: 100, height: 100)
        .padding(20)
        .foregroundColor(.white)
        .background(Color.brown.opacity(1))
        .clipShape(Circle())
    
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
