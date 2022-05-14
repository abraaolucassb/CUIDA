//
//  HomeView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct EscapeView: View {
    
    let alertas: [String] = [
        "ROTA 1",
        "ROTA 2",
        "ROTA 3",
        
        
    ]
    
    var body: some View {
        
        ZStack(alignment: .topTrailing){
        VStack(alignment: .center, spacing: 90) {

            profilelogBall()
            
            VStack(alignment: .leading, spacing: 35) {
                ForEach(alertas, id: \.self) { alerta in
                    alertView(text: alerta)
                }
            }
            .padding()
            .frame(width: 350)
            Spacer()
            
            
//            exitButton()
            Spacer()

        }
            LogoutButton()
                .offset(x: -45, y: 62)
    }
}
    
    func exitButton() -> some View {
        //    Button() {
        VStack(alignment: .leading, spacing: 20){
            Image(systemName: "rectangle.portrait.and.arrow.right")
                .padding()
            
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
            
            Spacer()
        }
        //    }
    }
    
    func profilelogBall() -> some View {
        VStack(spacing: 10){
        Image(systemName: "figure.walk")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding(.horizontal)
            .frame(width: 220, height: 150)
            .foregroundColor(.white)
//            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(100)
            
        
            Text("ROTAS DE FUGA")
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .black, design: .rounded))
                

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
        .background(Color("ColorEscura"))
        .foregroundColor(.white)
        .font(.system(size: 18, weight: .bold, design: .rounded))
        
//        padding()
        .foregroundColor(.white)
        .background(.blue.opacity(0.75))
        .cornerRadius(10)
        
    }
}


struct EscapeView_Previews: PreviewProvider {
    static var previews: some View {
        EscapeView()
            .padding(0.0)
    }
}

