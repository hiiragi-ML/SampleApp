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
            NavigationLink(destination: InformationView(name: name, photoName: photoName)){
                HStack{
                    Image(photoName)
                        .resizable()
                        .scaledToFit()
                        .clipShape(Circle())
                        .frame(width: 120, height: 120)
                        .shadow(color: .gray.opacity(0.7), radius: 10)
                    Text(name)
                        .font(.system(size: 22))
                    Spacer()
                }
            }
            .navigationBarTitle("猫たち", displayMode: .automatic)
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
    
    let names_photoNames: [String: [String]] = [
        "photoName": ["scottishfold", "munchkin", "mixed", "americanshorthair", "norwegianforestcat", "britishshorthair", "ragdoll", "minuet", "bengal", "siberianforestcat", "mainecoon", "russianblue", "ragamuffin", "exoticshorthair", "persia_chinchilla", "somali", "persia", "americancurl", "exotic", "japanesecat"],
        
        "name": ["スコティッシュフォールド", "マンチカン", "混血猫", "アメリカンショートヘア", "ノルウェージャンフォレストキャット", "ブリティッシュショートヘア", "ラグドール", "ミヌエット", "ベンガル", "サイベリアンフォレストキャット", "メインクーン", "ロシアンブルー", "ラガマフィン", "エキゾチックショートヘア", "チンチラペルシャ", "ソマリ", "ペルシャ", "アメリカンカール", "エキゾチック", "日本猫"],
        
        "explanation":["スコティッシュフォールドは人懐こく一緒に猫と遊びたいという人にはおすすめの猫です。","マンチカンは比較的おとなしく、人間になれやすい猫です。初めて会う人にもなつくことが多いです。","混血猫とは2種類以上の猫同士から生まれた純血種以外の猫のことで、日本で買われている猫の75%を占めると言われています。","アメリカンショートヘアは大変明るく、身体能力も高いと言われています。","ノルウェージャンフォレストキャットはとても温厚な性格です。また人に対する信頼度も厚く、初めて会う人でも怖がりません。","ブリティッシュショートヘアは静かに過ごすのが好きで穏やかな猫です。飼い主さんに忠実な猫です。","ラグドールは落ち着いた性格の子が多いです。また、おっとりした性格で情が深いです。","ミヌエットはペルシャのように甘えん坊でかつ、マンチカンのように好奇心旺盛な猫です。","ベンガルはワイルドな見た目に反して愛情深くて人懐っこい性格の猫です。人といるのが好きです。","サイベリアンフォレストキャットは犬のような性格で自分が認めた相手以外にはそっぽを向くことが多いです。","メインクーンは温厚で人になつきやすい性格です。また、賢い猫のため、トイレなどのしつけには困らないでしょう。","ロシアンブルーは飼い主に忠誠心を持ち従順な行動をとります。自分が認めた相手には好意を寄せてきます。","ラガマフィンは優しくておおらかな性格で、子供と遊ぶこともできます。甘え上手で愛らしい猫です。","エキゾチックショートヘアは、のんびり屋さんで平和主義です。どーんと構えて物怖じしない貫禄を感じる猫です。","チンチラペルシャは人に大げさに構われることを嫌いますが、突然甘えてきたりもするTHE 猫って漢字の猫です。","ソマリは温厚で明るい性格で、社交的な猫です。マイペースな一面もありますが、好奇心旺盛で活発な猫です。","ペルシャはおとなしく、ゆったりとした性格ですおとなになると活発に動くことも少なくなります。","アメリカンカールはとても賢く、穏やかで落ち着いた性格の猫です。いたずらをすることも少ないのでとても飼いやすいです。","エキゾチックショートヘアは、のんびり屋さんで平和主義です。どーんと構えて物怖じしない貫禄を感じる猫です。","日本猫は独立心が強く、クールな性格の猫です。また、社交的でもあるので他者との関わり合いを好みます。"]
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                VStack{
                    Spacer()
                    ForEach(0..<names_photoNames["photoName"]!.count){number in
                        showCats(rank: number+1, photoName: names_photoNames["photoName"]![number], name: names_photoNames["name"]![number], explanation: names_photoNames["explanation"]![number])
                    }
                }
                .padding()
                .background(Color(white: 0.9))
                .foregroundColor(Color.black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}
