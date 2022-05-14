//
//  HomeView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct Barragem: Identifiable {
    let id = UUID()
    let name: String
    let descricao: String
}


struct BarrageView: View {
    
    @State var barragemSelecionada: Barragem?
    @AppStorage("funcoes") var isTest: Bool = true

    let barragens = [
        Barragem(name: "OURO PRETO ", descricao: "Com 95 metros de altura e 330 metros de comprimento, a contenção da Mina de Fábrica foi construída com a utilização de concreto e aço, seguindo as mais rigorosas normas nacionais, as melhores práticas de engenharia e referências técnicas de entidades internacionais, afirma a Vale. A emprea informa que segue avaliando junto com a auditora técnica do Ministério Público a necessidade de ações complementares."),
        Barragem(name: "NOVA LIMA ", descricao: "(ANSA) - O Corpo de Bombeiros de Minas Gerais informou neste sábado (8) que houve o rompimento da barragem de mineração Mina Pau Branco, em Nova Lima, na região metropolitana de Belo Horizonte. Mas a Defesa Civil de Minas Gerais informou que o que aconteceu foi um grande transbordamento por conta da quantidade de chuvas que caem na área há alguns dias. Conforme o órgão, o sistema de drenagem não deu conta da quantidade de água. Nas redes sociais, muitos vídeos mostram que a BR-040, que liga a capital mineira ao Rio de Janeiro, foi interditada nos dois sentidos por conta da grande quantidade e lama que está passando no local. Os bombeiros informaram que quatro viaturas estão se dirigindo para a área afetada e que, por isso, ainda não se sabe se há vítimas ou feridos. Também o Batalhão de Operações Aéreas está indo para o local. A Mina Pau Branco pertence ao conglomerado francês Vallourec. (ANSA)."),
        Barragem(name: "BARÃO DE COCAIS ", descricao: "Para Ramos, os órgãos públicos, a população e a empresa estão preparados para um eventual acidente. Ele diz que não deixará a cidade nos próximos dias, mas, como precaução, preparou com a família uma bolsa com itens essenciais, como produtos de higiene e roupas. Outros moradores que conversaram com a BBC News Brasil, no entanto, relatam apreensão na cidade - intensificada desde que a Vale notificou o Ministério Público de Minas Gerais (MP-MG) sobre a deformação do talude. - O medo está nos olhos das pessoas. Muitas famílias estão deixando a cidade e indo para Santa Bárbara e outras cidades próximas. Relata Fernando Batista, de 38 anos, ele próprio trabalhador do setor da mineração, mas em outra empresa. - Preciso continuar em Barão de Cocais por conta do meu trabalho. Vou deixar minha filha e esposa em Itabira (outra cidade mineira, onde Fernando nasceu e tem família) e volto para trabalhar, pois no momento não tenho opção."),
        
    ]
    
    var body: some View {
        
        ZStack(alignment: .topTrailing) {
            VStack(alignment: .center, spacing: 55) {
                VStack(spacing: 95){
                profilelogBall()
                
    //            VStack(spacing: 200){
                VStack(alignment: .leading, spacing: 20) {
                    ForEach(barragens) { barragem in
                        alertView(para: barragem)
                        
                        
                    }
                }
                .padding()
                .frame(width: 350)
                Spacer()
                
                
                //            exitButton()
                            Spacer()
                }
            }
            .sheet(item: $barragemSelecionada) { barragem in
                DetalheBarragem(barragem: barragem)
                
    //            Spacer()

            }
            LogoutButton()
                .offset(x: -45, y: 57)
        }

    }
//                .background(Color.green.opacity(0.5))


    
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
        Image(systemName: "exclamationmark.octagon.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding(.horizontal)
            .frame(width: 220, height: 150)
            .foregroundColor(.white)
//            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(100)
            
        
            Text("BARRAGENS EM RISCO")
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

func alertView(para barragem: Barragem) -> some View {
    Button(action: {  barragemSelecionada = barragem }) {
        HStack(alignment: .center) {
            
            
            Image(systemName: "exclamationmark.octagon")
            .padding()
            
            Text(barragem.name)
                .padding(.leading,1)
//            Text(barragem.descricao)
//                .padding(.leading,1)
            
            Spacer()
            Image(systemName: "chevron.right")
                .padding()
                .foregroundColor(.black)
//
        
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

}

struct BarrageView_Previews: PreviewProvider {
    static var previews: some View {
        BarrageView()
            .padding(0.0)
    }
  }

 

