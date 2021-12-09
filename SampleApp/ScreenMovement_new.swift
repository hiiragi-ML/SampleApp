//
//  ScreenMovement_new.swift
//  SampleApp
//
//  Created by 伊藤柊惺 on 2021/12/09.
//

import SwiftUI

struct ScreenMovement_new: View {
    @State private var isBlueView = false
    var body: some View {
        VStack{
            if isBlueView{
                BlueView()
            }else {
                RedView()
            }
            Button(isBlueView ? "Red": "Blue"){
                self.isBlueView.toggle()
            }
        }
    }
}

struct BlueView: View{
    var body: some View{
        Color.blue
    }
}

struct RedView: View{
    var body: some View{
        Color.red
    }
}

struct ScreenMovement_new_Previews: PreviewProvider {
    static var previews: some View {
        ScreenMovement_new()
    }
}
