import SwiftUI

struct InformationView: View {
    let name: String
    let photoName: String
    var body: some View {
        ScrollView{
            Image(photoName)
                .resizable()
                .scaledToFit()
                .cornerRadius(8)
                .padding()
            Text("猫ちゃんの説明文")
        }
        .navigationBarTitle(name, displayMode: .inline)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(name: "Cat", photoName: "britishshorthair")
    }
}
