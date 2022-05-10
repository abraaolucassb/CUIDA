/*
See the License.txt file for this sample’s licensing information.
*/

import SwiftUI

struct FunView: View {

    @State private var funFact = ""
    var body: some View {
        VStack(alignment: .center, spacing: 1){
           
            Image(systemName: "message.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 100, height: 100)
            .padding(.horizontal)
            .frame(width: 120, height: 150)
            .foregroundColor(.brown)
//            .background(Color.white)
            .clipShape(Rectangle())
            .cornerRadius(100)
            
            Text("INFORMAÇÕES")
                .foregroundColor(.brown)
                .font(.system(size: 30, weight: .black, design: .rounded))
                    
                        
            Text(funFact)
                .padding()
                .font(.title)
                .frame(minHeight: 350)
            
            Button {
                funFact = information.funFacts.randomElement()!
            } label: {
                Text("INFORMAÇÕES")
                    .padding()
                    .foregroundColor(.white)
                    .background(.brown)
                    .clipShape(RoundedRectangle(cornerRadius: 5))
                    .font(.system(size: 18, weight: .bold, design: .rounded))
            }
            
        }
        .padding()
        
    }
}

struct FunView_Previews: PreviewProvider {
    static var previews: some View {
        FunView()
    }
}
