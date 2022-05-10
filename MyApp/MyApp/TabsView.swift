/*
See the License.txt file for this sample’s licensing information.
*/

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
                    Label("", systemImage: "message.fill")
                }
            
            HomeView()
                .tabItem {
                    Label("", systemImage: "person")
                }
            
            
//
//            FunFactsView()
//                .tabItem {
//                    Label("Fun Facts", systemImage: "hand.thumbsup")
//                }
        }
        .accentColor(.brown)

    }
}

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
    }
}
