import SwiftUI

struct ProfileView: View {
    @State private var name = "AAA"
    @State private var lastName = "BBB"
    
    var body: some View {
        VStack {
            // Profile Picture Circle
            Circle()
                .strokeBorder(style: StrokeStyle(lineWidth: 4, dash: [5]))
                .foregroundColor(.blue)
                .background(Circle().fill(Color.blue.opacity(0.2)))
                .shadow(radius: 5)
                .frame(width: 120, height: 120)
                .overlay(
                    Image(systemName: "person.crop.circle.fill")
                        .resizable()
                        .scaledToFill()
                        .clipShape(Circle())
                        .frame(width: 110, height: 110)
                )
                .padding(.top, 40)
            
            // Name Text Field with Rounded Rectangle
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth: 2)
                .frame(width: 330, height: 50)
                .foregroundColor(.white)
                .shadow(radius: 3)
                .overlay(
                    HStack {
                        Text("Name:")
                            .font(.headline)
                            .foregroundColor(.blue)
                        Spacer()
                        Text("\(name)")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal)
                )
                .padding(.top, 20)
            
            // LastName Text Field with Rounded Rectangle
            RoundedRectangle(cornerRadius: 15)
                .stroke(Color.blue, lineWidth: 2)
                .frame(width: 330, height: 50)
                .foregroundColor(.white)
                .shadow(radius: 3)
                .overlay(
                    HStack {
                        Text("Last Name:")
                            .font(.headline)
                            .foregroundColor(.blue)
                        Spacer()
                        Text("\(lastName)")
                            .font(.body)
                            .foregroundColor(.blue)
                    }
                    .padding(.horizontal)
                )
                .padding(.top, 20)

            Spacer()
        }
        .padding()
        .background(Color(.systemGroupedBackground))
        .cornerRadius(20)
        .shadow(radius: 10)
    }
}

#Preview {
    ProfileView()
}

