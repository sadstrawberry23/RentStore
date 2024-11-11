import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                TitleEkiDongelek
                cards
                
                Spacer()
                
                NavigationLink(destination: newListBron) {
                    RoundedRectangle(cornerRadius: 15)
                        .frame(width: 330, height: 60)
                        .foregroundColor(.blue)
                        .shadow(radius: 3)
                        .overlay(
                            VStack{
                                Text("Brondau")
                                    .font(.title2)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .cornerRadius(15)
                                    .padding(.horizontal)
                            }
                                .padding(.horizontal)
                    )
                        
                }
            }
        }
    }
    
    
    private var  TitleEkiDongelek: some View {
        VStack(alignment: .leading) {
            Text("Eki dongelek")
                .font(.largeTitle)
                .foregroundColor(.black)
                .padding(.bottom, 10)
        }
    }
    
    private var cards: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            LazyHStack(spacing: 20) {
                CardView(title: "alpha", description: "17000 tg/ayina", image: "moped-alpha")
                CardView(title: "beta", description: "17000 tg/ayina", image: "beta-rr")
                CardView(title: "samuray", description: "17000 tg/ayina", image: "samuray")
            }
            .padding(.horizontal)
        }
    }
    
    
    struct CardView: View {
        var title: String
        var description: String
        var image: String
        var body: some View {
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth: 2)
                .frame(width: 300, height: 500)
                .foregroundColor(.blue)
                .shadow(radius: 3)
                .overlay(
                    VStack(alignment: .leading) {
                        ZStack{
                            Image(image)
                                .resizable()
                        }
                        Text(title)
                            .font(.title)
                            .foregroundColor(.black)
                        
                        Text(description)
                            .font(.headline)
                            .foregroundColor(.black)
                    }
                        .padding()
                )
        }
    }
    
    private var newListBron: some View {
        NavigationView {
            VStack {
                Text("Soon..")
                    .font(.largeTitle)
            }
        }
    }
}

#Preview {
    ContentView()
}

