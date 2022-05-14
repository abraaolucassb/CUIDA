//
//  CircleImageView.swift
//  MyApp
//
//  Created by aluno on 09/04/22.
//

import SwiftUI

struct CircleImageView: View {
    
    let systemName: String
    
    var body: some View {
        Image(systemName: systemName)
            .resizable()
            .scaledToFit()
            .frame(width: 40, height: 40)
            .padding(.leading)
            .foregroundColor(.purple)
    }
}

//struct CircleImageView_Previews: PreviewProvider {
//    static var previews: some View {
//        CircleImageView()
//    }
//}
