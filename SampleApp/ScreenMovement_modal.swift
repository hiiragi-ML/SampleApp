//
//  screenMovement.swift
//  SampleApp
//
//  Created by 伊藤柊惺 on 2021/12/09.
//

import SwiftUI

struct ScreenMovement_modal: View {
    @State private var isPresented = false
    
    var body: some View {
        Button("Present"){
            self.isPresented = true
        }
        .sheet(isPresented: $isPresented) {
            NextView()
        }
    }
}

struct NextView: View{
    var body: some View{
        Color.blue
            .navigationBarHidden(false)
            .navigationBarTitle("Next View")
    }
}

struct ScreenMovement_modal_Previews: PreviewProvider {
    static var previews: some View {
        ScreenMovement_modal()
    }
}
