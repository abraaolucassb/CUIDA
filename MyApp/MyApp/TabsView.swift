import SwiftUI

struct TabsView: View {
    var body: some View {
        TabView {
            
            BarrageView()
                .tabItem {
                    Label("", systemImage: "exclamationmark.octagon.fill")
                }
            
            EscapeView()
                .tabItem {
                    Label("", systemImage: "figure.walk")
                }
            
            ReportView()
                .tabItem {
                    Label("", systemImage: "phone")
                }
            
            FunView()
                .tabItem {
                    Label("", systemImage: "globe.asia.australia.fill")
                    
                }
            
        }
        .accentColor(.brown)
    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
 }
    

