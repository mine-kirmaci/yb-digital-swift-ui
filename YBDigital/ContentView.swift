import SwiftUI

struct ContentView: View {
    @State private var currentPage: Int = 3
    
    var body: some View {
        GeometryReader { geometry in
            
            VStack {
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .scaleEffect(1.5)
                    .offset(y:-150)
            }.padding(5)
            
            VStack {
                Text("Faydalı grafik ve durum")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .frame(width:400,height: 150)
                    .offset(x:4,y:40)
            }.padding(5)
            
            VStack {
                Text("Alışkanlık ilerlemenizi görselleştirin")
                    .foregroundColor(.black)
                    .frame(width: 350,height: 250)
                    .offset(x:20,y:25)
                    .opacity(0.5)
            }.padding(5)
            
            VStack {
                Image("item")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 430, height: 429)
                    .offset(x:-35,y:170)
                
            }.padding(5)
            
            HStack(spacing: 8) {
                ForEach(0..<5) { index in
                    Circle()
                        .fill(index == currentPage ? Color.green : Color.green.opacity(0.3))
                        .frame(width: 10, height: 10)
                        .offset(x:150,y:670)
                            }
                        }
                        .padding(5)
            Button(action: {
                        }) {
                            Text("Sonra")
                                .frame(width: 360, height: 52)
                                .background(LinearGradient(gradient: Gradient(colors: [Color("Green"), Color("Blue")]), startPoint: .leading, endPoint: .trailing))
                                .foregroundColor(.white)
                                .font(.headline)
                                .cornerRadius(30)
                        }
                        .offset(x:25,y: 725)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
