import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            // First main vstack
            VStack {
                VStack(alignment: .center, spacing: 30) {
                    Image("myImage")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 200, height: 200)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("Your Name")
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .shadow(radius: 5)
                    Text("Full Stack iOS Developer")
                        .font(.system(.body))
                        .foregroundColor(.white)
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
                    .foregroundColor(.white)
                    .frame(width: 250, height: 35)
                    .shadow(radius: 5, y: 8)
                }
                
                Spacer()
                
                // Second main vstack
                VStack(spacing: 30) {
                    
                    RoundedRectangle(cornerRadius: 100)
                        .frame(width: 250, height: 50)
                        .foregroundColor(.white)
                        .shadow(radius: 8, y: 8)
                        .overlay(Text("Follow")
                            .font(.system(.title))
                            .fontWeight(.bold)
                            .foregroundColor(.pink)
                        )
                    
                    HStack(spacing: 60) {
                        
                        VStack {
                            Text("1775")
                                .foregroundColor(.pink)
                                .font(.title)
                            Text("Appreciations")
                                .foregroundColor(.gray)
                                .font(.system(.caption))
                        }
                        
                        VStack {
                            Text("800")
                                .foregroundColor(.pink)
                                .font(.title)
                            Text("Followers")
                                .foregroundColor(.gray)
                                .font(.system(.caption))
                        }
                        
                        VStack {
                            Text("231")
                                .foregroundColor(.pink)
                                .font(.title)
                            Text("Following")
                                .foregroundColor(.gray)
                                .font(.system(.caption))
                        }
                    }
                    
                    Text("About You")
                        .font(.largeTitle)
                    
                    Text("I'm a iOS Frontend Developer. Welcome to the series of iOS-15 projects. Let's dive deeper and create some more exciting projects.")
                        .font(.body)
                        .foregroundColor(.black)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                }
                
            }
            .padding()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
