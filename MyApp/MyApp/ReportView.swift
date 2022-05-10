//
//  HomeView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct ReportView: View {
    
    let alertas: [String] = [
        "BOMBEIROS (193)",
        "DEFESA CIVIL (199)",
        "SAMU (192)",
        "PRE (198)",
        "PRF (191)",
        
        
    ]
    
    var body: some View {
        
        
        VStack(alignment: .center, spacing: 70) {
            
            profilelogBall()
            
//            Text("My Options")
//            .foregroundColor(.green)
//            .font(.system(size: 20, weight: .black, design: .rounded))
            
            VStack(alignment: .leading, spacing: 17) {
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
//                .background(Color.green.opacity(0.5))

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
        Image(systemName: "phone.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding(.horizontal)
            .frame(width: 220, height: 150)
            .foregroundColor(.white)
//            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(100)
            
        
            Text("CONTATE AS AUTORIDADES")
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

