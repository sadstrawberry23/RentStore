import SwiftUI

struct ProfileView: View{
    var body: some View{
        VStack{
            Circle()
                .stroke(style: StrokeStyle(lineWidth: 2))
                .foregroundColor(.blue)
                .shadow(radius: 3)
                .frame(width: 180)
                .padding()
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth: 2)
                .frame(width: 330, height: 40)
                .foregroundColor(.blue)
                .shadow(radius: 3)
                .overlay(
                    VStack(alignment: .leading){
                        Text("Аты")
                    }
                )
            Spacer()
        }
    }
}

#Preview {
    ProfileView()
}
