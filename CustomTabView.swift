import SwiftUI

struct CustomTabView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "circle.fill")
                        .resizable()
                    Text("Dongelek")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person.fill")
                    Text("Profile")
                }
        }
    }
}

#Preview {
    CustomTabView()
}

