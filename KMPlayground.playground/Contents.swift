import SwiftUI
import PlaygroundSupport


struct KMView : View {
    
    @State private var magnified = false
    
    var body: some View {
        VStack {
            VStack{
                Spacer()
                Text("km").font(.title)
                Text("1287,4").font(.system(size: magnified ? 100 : 60)).onTapGesture {
                    magnified.toggle()
                }
                Spacer()
            }
            HStack {
                Spacer().frame(minHeight: 35)
                Text("B = ")
                Text("A = ")
            }.background(Color(hue: 0, saturation: 0.0, brightness: 0.88))
            VStack {
                Spacer().frame(maxHeight:5)
                HStack {
                    Text("Main").padding(.leading).font(.title2)
                    Spacer()
                }
                HStack {
                    Text("Hauptstrecke").padding(.leading)
                    Spacer()
                }
                Spacer().frame(maxHeight: 70)
            }.frame(alignment: .top).background(Color.blue).foregroundColor(.white)
        }
    }
}


PlaygroundPage.current.setLiveView(KMView().frame(minWidth: 400, maxWidth: .infinity,minHeight: 500 ,maxHeight: .infinity,alignment: .center))
