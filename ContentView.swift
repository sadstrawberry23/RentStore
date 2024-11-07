import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                TitleEkiDongelek()
                cards
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Text("Brondau")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(Color.blue)
                        .cornerRadius(15)
                        .padding([.horizontal, .bottom], 10)
                }
            }
        }
    }
    
    // Заголовок экрана
    struct TitleEkiDongelek: View {
        var body: some View {
            VStack(alignment: .leading) {
                Text("Eki dongelek")
                    .font(.largeTitle)
                    .foregroundColor(.blue)
                    .padding(.bottom, 10)
            }
        }
    }
    
    private var cards: some View {
        ScrollView(.horizontal, showsIndicators: true) {
            LazyHStack(spacing: 20) {
                CardView(title: "alpha", description: "17000 tg/ayina")
                CardView(title: "beta", description: "17000 tg/ayina")
                CardView(title: "samuray", description: "17000 tg/ayina")
            }
            .padding(.horizontal)
        }
    }
    
    // Представление карточки
    struct CardView: View {
        var title: String
        var description: String
        
        var body: some View {
            VStack {
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Text(description)
                    .font(.headline)
                    .foregroundColor(.white)
            }
            .padding()
            .frame(width: 300, height: 500)
            .background(Color.blue)
            .cornerRadius(15)
            .shadow(radius: 5)
        }
    }
}

#Preview {
    ContentView()
}

