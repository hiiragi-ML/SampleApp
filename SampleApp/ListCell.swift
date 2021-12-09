//
//  ListCell.swift
//  SampleApp
//
//  Created by 伊藤柊惺 on 2021/12/08.
//

import SwiftUI

struct ListCell: View {
    fileprivate func userIconView() -> some View {
        return Button {
#warning("TODO")
        } label: {
            Image("munchkin")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 60, height: 60)
                .padding(8)
        }
    }
    
    fileprivate func userNameView() -> HStack<TupleView<(Text, Text)>> {
        return HStack{
            Text("ひいらぎ")
            Text("@hiiragi_ML")
                .foregroundColor(.gray)
        }
    }
    
    fileprivate func messageView() -> some View {
        return Text("ここは本文が表示されるテキスト領域です。改行することもできます。")
            .lineLimit(nil)
            .fixedSize(horizontal: false, vertical: true)
    }
    
    fileprivate func bottomButtonView() -> some View {
        return HStack{
            Button {
#warning("TODO")
            } label: {
                Image(systemName: "bubble.left")
            }
            Spacer()
            Button {
#warning("TODO")
            } label: {
                Image(systemName: "arrow.2.squarepath")
            }
            Spacer()
            Button {
#warning("TODO")
            } label: {
                Image(systemName: "heart")
            }
            Spacer()
            Button {
#warning("TODO")
            } label: {
                Image(systemName: "square.and.arrow.up")
            }
        }
        .foregroundColor(.gray)
    }
    
    var body: some View {
        HStack{
            userIconView()
            VStack(alignment: .leading){
                userNameView()
                messageView()
                bottomButtonView()
                .padding(8)
            }
        }
        .padding(8)
    }
}

struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        ListCell()
            .previewLayout(.sizeThatFits)
    }
}
