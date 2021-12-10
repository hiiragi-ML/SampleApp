import SwiftUI

struct ContentView: View {
    fileprivate func showCats(rank: Int, photoName: String, name: String, explanation: String) -> some View {
        return VStack{
            HStack{
                Text(String(rank) + "位")
                    .font(.largeTitle)
                    .frame(width:75, height:35)
                Spacer()
            }
            HStack{
                Image(photoName)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                    .frame(width: 120, height: 120)
                Text(name)
                    .font(.system(size: 22))
                Spacer()
            }
            HStack{
                Text(explanation)
            }
        }
        .padding()
        .background(.white)
        .cornerRadius(8)
        .clipped()
        .shadow(color: .gray.opacity(0.7), radius: 5)
    }
    
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                
                showCats(rank: 1, photoName: "scottishfold", name: "スコティッシュフォールド" , explanation: "スコティッシュフォールドは人懐っこく、穏やかで甘えるのが好きな子が多いです。また、比較的運動量が少ない猫です。")
                
                showCats(rank: 2, photoName: "munchkin", name: "マンチカン", explanation: "マンチカンは大変陽気で好奇心が強く、遊び好きです。人や同居の他のペットとも上手に接します。また、比較的おとなしい性格なので、他の猫などとも一緒に飼育できます。")

                showCats(rank: 3, photoName: "mike", name: "混血猫", explanation: "")
                
                showCats(rank: 4, photoName: "americanshorthair", name: "アメリカンショートヘア", explanation: "アメリカンショートヘアは大変明るく好奇心旺盛な猫です。孤独好きで、撫でられることまで許可されても抱っこはさせてくれないかもしれません。")

                showCats(rank: 5, photoName: "norwegianforestcat", name: "ノルウェージャンフォレストキャット", explanation: "ノルウェージャンフォレストキャットは温厚な性格で、優しくて遊び好きな猫です。人に対する信頼も厚く、知らない人でもフレンドリーに接してくれます。")
                
                showCats(rank: 6, photoName: "britishshorthair", name: "ブリティッシュショートヘア", explanation: "ブリティッシュショートヘアは静かに過ごすのが好きな穏やかで優しい猫です。自立心が強く堂々としていますが、人と一緒にいることも大好きです。")

                showCats(rank: 7, photoName: "", name: "", explanation: "")
                
                showCats(rank: 12, photoName: "russianblue", name: "ロシアンブルー", explanation: "ロシアンブルーは飼い主に忠実で犬のような性格です。プライドが高く気まぐれで、嫉妬深い性格も猫っぽさがあります。")
                
            }
            .padding()
            .background(Color(white: 0.9))
            .foregroundColor(Color.black)
        }
        .edgesIgnoringSafeArea(.bottom)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
