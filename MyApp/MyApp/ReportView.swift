//
//  HomeView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct Link<Label> where Label : View {}

struct ReportView: View {
    
    let alertas: [String] = [
        "BOMBEIROS (193)",
        "DEFESA CIVIL (199)",
        "SAMU (192)",
        "PRE (198)",
        "PRF (191)",
        
    ]
    
    var body: some View {
            VStack(alignment: .center, spacing: 0) {
                profilelogBall()
                    .offset(x: 0, y: -54)
                
                VStack(alignment: .leading, spacing: 17){
                    ForEach(alertas, id: \.self) { alerta in
                        alertView(text: alerta)
                    }
                    .padding([.leading, .trailing], 10)
                }
                .padding()
                .edgesIgnoringSafeArea(.top)
                
                Spacer()
            }
//            LogoutButton()
//                .offset(x: -45, y: 50)

//                .background(Color.green.opacity(0.5))
        
    }
    
    func exitButton() -> some View {
        VStack(alignment: .leading, spacing: 20){
            Image(systemName: "rectangle.portrait.and.arrow.right")
                .padding()
            
                .foregroundColor(.white)
                .background(Color.green)
                .clipShape(Circle())
            
            Spacer()
        }
    }
    
    func profilelogBall() -> some View {
        VStack(spacing: 10){
        Image(systemName: "phone.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding(.horizontal)
            .frame(width: 220, height: 150)
            .foregroundColor(.white)
            .clipShape(Rectangle())
//            .cornerRadius(10)
            
        
            Text("CONTATE AS AUTORIDADES")
            .foregroundColor(.white)
            .font(.system(size: 18, weight: .black, design: .rounded))
                

     }
        .scaledToFill()
        .frame(width: 460, height: 265)
        .padding(.top)
        .background(Color.brown)
        .cornerRadius(100)

}

    func alertView(text: String) -> some View {
        //    Button() {
        
        VStack{
            
        HStack(alignment: .center) {
            
            
            Image(systemName: "phone.and.waveform.fill")
            .padding()
            
            Text(text)
                .padding(.leading,1)
            Spacer()
//            Image(systemName: "chevron.right")
//                .padding()
//                .foregroundColor(.black)
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


struct ReportView_Previews: PreviewProvider {
    static var previews: some View {
        ReportView()
            .padding(0.0)
    }
}

