//
//  ContentView.swift
//  SampleApp
//
//  Created by 伊藤柊惺 on 2021/12/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack{
                Spacer()
                VStack{
                    HStack{
                        Image("munchkin")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 120, height: 120)
                        Text("マンチカン")
                            .font(.system(size: 22))
                        Spacer()
                    }
                    HStack{
                        Text("マンチカンは大変陽気で好奇心が強く、遊び好きです。人や同居の他のペットとも上手に接します。また、比較的おとなしい性格なので、他の猫などとも一緒に飼育できます。")
                        Spacer()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(8)
                .clipped()
                .shadow(color: .gray.opacity(0.7), radius: 5)
                
                VStack{
                    HStack{
                        Image("russianblue")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width:120, height: 120)
                        Text("ロシアンブルー")
                            .font(.system(size: 22))
                        Spacer()
                    }
                    HStack{
                        Text("ロシアンブルーは飼い主に忠実で犬のような性格です。プライドが高く気まぐれで、嫉妬深い性格も猫っぽさがあります。")
                        Spacer()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(8)
                .clipped()
                .shadow(color: .gray.opacity(0.7), radius: 5)
                
                VStack{
                    HStack{
                        Image("americanshorthair")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width:120, height: 120)
                        Text("アメリカンショートヘア")
                            .font(.system(size: 22))
                        Spacer()
                    }
                    HStack{
                        Text("アメリカンショートヘアは大変明るく好奇心旺盛な猫です。孤独好きで、撫でられることまで許可されても抱っこはさせてくれないかもしれません。")
                        Spacer()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(8)
                .clipped()
                .shadow(color: .gray.opacity(0.7), radius: 5)
                
                VStack{
                    HStack{
                        Image("britishshorthair")
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width:120, height: 120)
                        Text("ブリティッシュショートヘア")
                            .font(.system(size: 22))
                        Spacer()
                    }
                    HStack{
                        Text("ブリティッシュショートヘアは静かに過ごすのが好きな穏やかで優しい猫です。自立心が強く堂々としていますが、人と一緒にいることも大好きです。")
                        Spacer()
                    }
                }
                .padding()
                .background(.white)
                .cornerRadius(8)
                .clipped()
                .shadow(color: .gray.opacity(0.7), radius: 5)
                
                Spacer()
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
