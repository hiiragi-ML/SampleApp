import SwiftUI

struct InformationView: View {
    let name: String
    var body: some View {
        Text(name)
            .navigationBarTitle(name, displayMode: .inline)
    }
}

struct InformationView_Previews: PreviewProvider {
    static var previews: some View {
        InformationView(name: "Cat")
    }
}
