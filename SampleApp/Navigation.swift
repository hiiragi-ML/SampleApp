//
//  Navigation.swift
//  SampleApp
//
//  Created by 伊藤柊惺 on 2021/12/09.
//

import SwiftUI

struct Navigation: View {
    var body: some View {
        NavigationView{
            NavigationLink("Push", destination: NextView())
                .navigationBarHidden(true)
                .navigationBarTitle("Title")
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
