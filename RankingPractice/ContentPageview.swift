//
//  ContentPageview.swift
//  RankingPractice
//
//  Created by 澤木柊斗 on 2023/08/24.
//

import SwiftUI

struct ContentPageview: View {
    @Binding var selection : TabType
    var body: some View {
        TabView(selection: $selection ){
            Text("買って住みたい").tag(TabType.rent)
            Text("借りて住みたい").tag(TabType.buy)
            
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .animation(.linear(duration: 0.3))
        
    }
}

struct ContentPageview_Previews: PreviewProvider {
    static var previews: some View {
        ContentPageview(selection: .constant(.rent))
    }
}
