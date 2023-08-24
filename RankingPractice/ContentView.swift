//
//  ContentView.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/24.
//

import SwiftUI
enum TabType: Int{
    case rent
    case buy
    
}
struct ContentView: View {

    @State private var selection: TabType = .rent
    var body: some View {
        GeometryReader{
            geometory in NavigationView{
                VStack(spacing: .zero){
                    UpperTabView(selection: $selection, geometorySize: geometory.size)
                    Spacer()
                   ContentPageview(selection: $selection)
                }
                .navigationBarTitle("住みたい街ランキング2021（首都圏）",displayMode: .inline)
            }
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
