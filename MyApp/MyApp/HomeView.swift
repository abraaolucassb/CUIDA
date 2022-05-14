//
//  HomeView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct HomeView: View {
    
//    let alertas: [String] = [
//        "OURO PRETO",
//        "NOVA LIMA",
//        "SAIR",
//
//
//    ]
    
    @AppStorage("login") var isLogin: Bool = false
    
    var body: some View {
        
        
        VStack(alignment: .center, spacing: 235) {
            
            profilelogBall()
            
            Button {
                isLogin = false
            } label: {
                Text("SAIR")
                    .padding()
                    .foregroundColor(.white)
                    .background(Color("ColorMeioEscuro"))
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .foregroundColor(.white)
                    .font(.system(size: 18, weight: .bold, design: .monospaced))
            }
            
            Spacer()

        }
    }
    
//    func exitButton() -> some View {
//        //    Button() {
//        VStack(alignment: .leading, spacing: 20){
//            Image(systemName: "rectangle.portrait.and.arrow.right")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 20, height: 20)
//
//                .padding()
//
//
//                .padding()
//                .foregroundColor(.white)
//                .background(.brown)
//                .clipShape(RoundedRectangle(cornerRadius: 50))
//
//            Spacer()
//        }
//        //    }
//    }
    
    func profilelogBall() -> some View {
        HStack(spacing: 20){
        Image(systemName: "person.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 70, height: 70)
            .padding(150)
            .frame(width: 120, height: 120)
            .foregroundColor(.black)
            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(100)
            
        
            VStack{
            Text("USER 001")
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .black, design: .rounded))
                
            Text("The Miro Team App")
            .foregroundColor(.white)
            .font(.system(size: 14, weight: .bold, design: .rounded))
                
            }
     }
//        .padding(.horizontal)
//        .font(.system(size: 1)
//        .resizable()
        .scaledToFill()
        .frame(width: 460, height: 290)
        .padding(.top)
        .background(Color.brown)
        .cornerRadius(100)

}

    func alertView(text: String) -> some View {
        //    Button() {
        
        VStack{
            
            
        HStack(alignment: .center) {
            
            
            Image(systemName: "exclamationmark.octagon")
            .padding()
            
            Text(text)
                .padding(.leading,1)
            Spacer()
            Image(systemName: "chevron.right")
                .padding()
                .foregroundColor(.black)
//
            
        
            }
        }
//        .background(Color(red: 78/255, green: 117/255, blue: 1))
        .background(.brown)
        .foregroundColor(.white)
        .font(.system(size: 18, weight: .bold, design: .rounded))
        
//        padding()
        .foregroundColor(.white)
        .background(.blue.opacity(0.75))
        .cornerRadius(10)
        
    }
}


struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .padding(0.0)
    }
}
