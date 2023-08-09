import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            // Background image
            Image("background")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
            
            // All contents
            VStack(spacing: 25) {
                
                Image("profilePicture")
                    .resizable()
                    .frame(width: 220, height: 220)
                    .cornerRadius(110)
                    .shadow(color:.pink, radius: 5, x: 5, y:5)
                
                Text("Some User")
                    .font(.system(.title))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Text("iOS | Frontend Developer")
                    .font(.system(.title3))
                    .foregroundColor(.white)
                
                // Links
                HStack(spacing: 40) {
                    Image(systemName: "heart.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image(systemName: "network")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image(systemName: "message.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                    
                    Image(systemName: "phone.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                }
                .padding(.horizontal, 60)
                .padding(.bottom, 8)
                .foregroundColor(.white)
                .shadow(color: .pink, radius: 5, x: 5, y: 5)
                
                // Follow Button
                Button {
                    print("Button Pressed")
                } label: {
                    RoundedRectangle(cornerRadius: 40)
                        .frame(width: 220, height: 55)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 5, y: 5)
                        .overlay(
                            Text("Follow")
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                        )
                }
                
                // Follower, following details
                HStack(spacing: 40) {
                    
                    // Appreciations
                    VStack {
                        Text("1234")
                            .font(.title)
                            .foregroundColor(.pink)
                        Text("Appreciations")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    
                    // Followers
                    VStack {
                        Text("234")
                            .font(.title)
                            .foregroundColor(.pink)
                        Text("Followers")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                    
                    // Following
                    VStack {
                        Text("123")
                            .font(.title)
                            .foregroundColor(.pink)
                        Text("Following")
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                }

                Text("About You")
                    .font(.largeTitle)
                    .foregroundColor(.black.opacity(0.7))
                
                Text("I'm a iOS Developer. Let's learn this amazing technology together.")
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                    .multilineTextAlignment(.center)
                    .lineLimit(3)
            }
            .padding(.horizontal, 9)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
