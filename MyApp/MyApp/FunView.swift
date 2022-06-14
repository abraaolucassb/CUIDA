import SwiftUI
import WebKit

//@State private var showWebView = false

struct WebView: UIViewRepresentable {

    var url: URL

    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        webView.load(request)
    }
}

struct FunView: View {
    
    @State private var funFact = ""
    @State private var showWebView = false
    
    
    var body: some View {
        VStack(spacing: 0) {
            
            //            profilelogBall()
            //                .offset(x: 0, y: -54)
            
            //            Image(systemName: "message.fill")
            //                .resizable()
            //                .scaledToFit()
            //                .frame(width: 100, height: 100)
            //                .padding(.horizontal)
            //                .frame(width: 120, height: 150)
            //                .foregroundColor(.brown)
            //            //            .background(Color.white)
            //                .clipShape(Rectangle())
            //                .cornerRadius(100)
            //
            //
            //
            //            VStack(spacing: 30){
            //
            //                Text("INFORMAÇÕES")
            //                    .foregroundColor(.brown)
            //                    .font(.system(size: 30, weight: .black, design: .rounded))
            WebView(url:URL(string:"https://tailing.grida.no/map/maps/")!)
                .offset(x: 0, y: -54)
        }
    }
}

func profilelogBall() -> some View {
    VStack(spacing: 10){
        Image(systemName: "message.fill")
            .resizable()
            .scaledToFit()
            .frame(width: 120, height: 120)
            .padding(.horizontal)
            .frame(width: 220, height: 150)
            .foregroundColor(.brown)
            .clipShape(Rectangle())
        
        Text("INFORMAÇÕES")
            .foregroundColor(.brown)
            .font(.system(size: 24, weight: .black, design: .rounded))
        
        
    }
    .scaledToFill()
    .frame(width: 460, height: 265)
    .padding(.top)
    .background(Color("ColorCinza"))
}


struct FunView_Previews: PreviewProvider {
    static var previews: some View {
        FunView()
    }
}
